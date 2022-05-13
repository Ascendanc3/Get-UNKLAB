import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'absensi_scan_record.g.dart';

abstract class AbsensiScanRecord
    implements Built<AbsensiScanRecord, AbsensiScanRecordBuilder> {
  static Serializer<AbsensiScanRecord> get serializer =>
      _$absensiScanRecordSerializer;

  @nullable
  String get namaMahasiswa;

  @nullable
  String get studentID;

  @nullable
  String get namaKelas;

  @nullable
  String get photoSelfie;

  @nullable
  @BuiltValueField(wireName: 'NIM')
  String get nim;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AbsensiScanRecordBuilder builder) => builder
    ..namaMahasiswa = ''
    ..studentID = ''
    ..namaKelas = ''
    ..photoSelfie = ''
    ..nim = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('absensiScan');

  static Stream<AbsensiScanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AbsensiScanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AbsensiScanRecord._();
  factory AbsensiScanRecord([void Function(AbsensiScanRecordBuilder) updates]) =
      _$AbsensiScanRecord;

  static AbsensiScanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAbsensiScanRecordData({
  String namaMahasiswa,
  String studentID,
  String namaKelas,
  String photoSelfie,
  String nim,
}) =>
    serializers.toFirestore(
        AbsensiScanRecord.serializer,
        AbsensiScanRecord((a) => a
          ..namaMahasiswa = namaMahasiswa
          ..studentID = studentID
          ..namaKelas = namaKelas
          ..photoSelfie = photoSelfie
          ..nim = nim));
