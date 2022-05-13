// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absensi_scan_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AbsensiScanRecord> _$absensiScanRecordSerializer =
    new _$AbsensiScanRecordSerializer();

class _$AbsensiScanRecordSerializer
    implements StructuredSerializer<AbsensiScanRecord> {
  @override
  final Iterable<Type> types = const [AbsensiScanRecord, _$AbsensiScanRecord];
  @override
  final String wireName = 'AbsensiScanRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AbsensiScanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.namaMahasiswa;
    if (value != null) {
      result
        ..add('namaMahasiswa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studentID;
    if (value != null) {
      result
        ..add('studentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.namaKelas;
    if (value != null) {
      result
        ..add('namaKelas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoSelfie;
    if (value != null) {
      result
        ..add('photoSelfie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nim;
    if (value != null) {
      result
        ..add('NIM')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AbsensiScanRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AbsensiScanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'namaMahasiswa':
          result.namaMahasiswa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'studentID':
          result.studentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'namaKelas':
          result.namaKelas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoSelfie':
          result.photoSelfie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'NIM':
          result.nim = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AbsensiScanRecord extends AbsensiScanRecord {
  @override
  final String namaMahasiswa;
  @override
  final String studentID;
  @override
  final String namaKelas;
  @override
  final String photoSelfie;
  @override
  final String nim;
  @override
  final DocumentReference<Object> reference;

  factory _$AbsensiScanRecord(
          [void Function(AbsensiScanRecordBuilder) updates]) =>
      (new AbsensiScanRecordBuilder()..update(updates)).build();

  _$AbsensiScanRecord._(
      {this.namaMahasiswa,
      this.studentID,
      this.namaKelas,
      this.photoSelfie,
      this.nim,
      this.reference})
      : super._();

  @override
  AbsensiScanRecord rebuild(void Function(AbsensiScanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbsensiScanRecordBuilder toBuilder() =>
      new AbsensiScanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbsensiScanRecord &&
        namaMahasiswa == other.namaMahasiswa &&
        studentID == other.studentID &&
        namaKelas == other.namaKelas &&
        photoSelfie == other.photoSelfie &&
        nim == other.nim &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, namaMahasiswa.hashCode), studentID.hashCode),
                    namaKelas.hashCode),
                photoSelfie.hashCode),
            nim.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AbsensiScanRecord')
          ..add('namaMahasiswa', namaMahasiswa)
          ..add('studentID', studentID)
          ..add('namaKelas', namaKelas)
          ..add('photoSelfie', photoSelfie)
          ..add('nim', nim)
          ..add('reference', reference))
        .toString();
  }
}

class AbsensiScanRecordBuilder
    implements Builder<AbsensiScanRecord, AbsensiScanRecordBuilder> {
  _$AbsensiScanRecord _$v;

  String _namaMahasiswa;
  String get namaMahasiswa => _$this._namaMahasiswa;
  set namaMahasiswa(String namaMahasiswa) =>
      _$this._namaMahasiswa = namaMahasiswa;

  String _studentID;
  String get studentID => _$this._studentID;
  set studentID(String studentID) => _$this._studentID = studentID;

  String _namaKelas;
  String get namaKelas => _$this._namaKelas;
  set namaKelas(String namaKelas) => _$this._namaKelas = namaKelas;

  String _photoSelfie;
  String get photoSelfie => _$this._photoSelfie;
  set photoSelfie(String photoSelfie) => _$this._photoSelfie = photoSelfie;

  String _nim;
  String get nim => _$this._nim;
  set nim(String nim) => _$this._nim = nim;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AbsensiScanRecordBuilder() {
    AbsensiScanRecord._initializeBuilder(this);
  }

  AbsensiScanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namaMahasiswa = $v.namaMahasiswa;
      _studentID = $v.studentID;
      _namaKelas = $v.namaKelas;
      _photoSelfie = $v.photoSelfie;
      _nim = $v.nim;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbsensiScanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbsensiScanRecord;
  }

  @override
  void update(void Function(AbsensiScanRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AbsensiScanRecord build() {
    final _$result = _$v ??
        new _$AbsensiScanRecord._(
            namaMahasiswa: namaMahasiswa,
            studentID: studentID,
            namaKelas: namaKelas,
            photoSelfie: photoSelfie,
            nim: nim,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
