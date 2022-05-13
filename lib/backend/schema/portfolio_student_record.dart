import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'portfolio_student_record.g.dart';

abstract class PortfolioStudentRecord
    implements Built<PortfolioStudentRecord, PortfolioStudentRecordBuilder> {
  static Serializer<PortfolioStudentRecord> get serializer =>
      _$portfolioStudentRecordSerializer;

  @nullable
  DocumentReference get userAssociation;

  @nullable
  String get photoPortfolio;

  @nullable
  String get namaPortfolio;

  @nullable
  String get tipePortfolio;

  @nullable
  String get deskripsiPortfolio;

  @nullable
  String get tanggalPembuatanPortfolio;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PortfolioStudentRecordBuilder builder) =>
      builder
        ..photoPortfolio = ''
        ..namaPortfolio = ''
        ..tipePortfolio = ''
        ..deskripsiPortfolio = ''
        ..tanggalPembuatanPortfolio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('portfolioStudent');

  static Stream<PortfolioStudentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PortfolioStudentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PortfolioStudentRecord._();
  factory PortfolioStudentRecord(
          [void Function(PortfolioStudentRecordBuilder) updates]) =
      _$PortfolioStudentRecord;

  static PortfolioStudentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPortfolioStudentRecordData({
  DocumentReference userAssociation,
  String photoPortfolio,
  String namaPortfolio,
  String tipePortfolio,
  String deskripsiPortfolio,
  String tanggalPembuatanPortfolio,
}) =>
    serializers.toFirestore(
        PortfolioStudentRecord.serializer,
        PortfolioStudentRecord((p) => p
          ..userAssociation = userAssociation
          ..photoPortfolio = photoPortfolio
          ..namaPortfolio = namaPortfolio
          ..tipePortfolio = tipePortfolio
          ..deskripsiPortfolio = deskripsiPortfolio
          ..tanggalPembuatanPortfolio = tanggalPembuatanPortfolio));
