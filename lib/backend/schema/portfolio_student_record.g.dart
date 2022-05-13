// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_student_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PortfolioStudentRecord> _$portfolioStudentRecordSerializer =
    new _$PortfolioStudentRecordSerializer();

class _$PortfolioStudentRecordSerializer
    implements StructuredSerializer<PortfolioStudentRecord> {
  @override
  final Iterable<Type> types = const [
    PortfolioStudentRecord,
    _$PortfolioStudentRecord
  ];
  @override
  final String wireName = 'PortfolioStudentRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PortfolioStudentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userAssociation;
    if (value != null) {
      result
        ..add('userAssociation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.photoPortfolio;
    if (value != null) {
      result
        ..add('photoPortfolio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.namaPortfolio;
    if (value != null) {
      result
        ..add('namaPortfolio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipePortfolio;
    if (value != null) {
      result
        ..add('tipePortfolio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deskripsiPortfolio;
    if (value != null) {
      result
        ..add('deskripsiPortfolio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tanggalPembuatanPortfolio;
    if (value != null) {
      result
        ..add('tanggalPembuatanPortfolio')
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
  PortfolioStudentRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PortfolioStudentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userAssociation':
          result.userAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'photoPortfolio':
          result.photoPortfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'namaPortfolio':
          result.namaPortfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tipePortfolio':
          result.tipePortfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deskripsiPortfolio':
          result.deskripsiPortfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tanggalPembuatanPortfolio':
          result.tanggalPembuatanPortfolio = serializers.deserialize(value,
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

class _$PortfolioStudentRecord extends PortfolioStudentRecord {
  @override
  final DocumentReference<Object> userAssociation;
  @override
  final String photoPortfolio;
  @override
  final String namaPortfolio;
  @override
  final String tipePortfolio;
  @override
  final String deskripsiPortfolio;
  @override
  final String tanggalPembuatanPortfolio;
  @override
  final DocumentReference<Object> reference;

  factory _$PortfolioStudentRecord(
          [void Function(PortfolioStudentRecordBuilder) updates]) =>
      (new PortfolioStudentRecordBuilder()..update(updates)).build();

  _$PortfolioStudentRecord._(
      {this.userAssociation,
      this.photoPortfolio,
      this.namaPortfolio,
      this.tipePortfolio,
      this.deskripsiPortfolio,
      this.tanggalPembuatanPortfolio,
      this.reference})
      : super._();

  @override
  PortfolioStudentRecord rebuild(
          void Function(PortfolioStudentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortfolioStudentRecordBuilder toBuilder() =>
      new PortfolioStudentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortfolioStudentRecord &&
        userAssociation == other.userAssociation &&
        photoPortfolio == other.photoPortfolio &&
        namaPortfolio == other.namaPortfolio &&
        tipePortfolio == other.tipePortfolio &&
        deskripsiPortfolio == other.deskripsiPortfolio &&
        tanggalPembuatanPortfolio == other.tanggalPembuatanPortfolio &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, userAssociation.hashCode),
                            photoPortfolio.hashCode),
                        namaPortfolio.hashCode),
                    tipePortfolio.hashCode),
                deskripsiPortfolio.hashCode),
            tanggalPembuatanPortfolio.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PortfolioStudentRecord')
          ..add('userAssociation', userAssociation)
          ..add('photoPortfolio', photoPortfolio)
          ..add('namaPortfolio', namaPortfolio)
          ..add('tipePortfolio', tipePortfolio)
          ..add('deskripsiPortfolio', deskripsiPortfolio)
          ..add('tanggalPembuatanPortfolio', tanggalPembuatanPortfolio)
          ..add('reference', reference))
        .toString();
  }
}

class PortfolioStudentRecordBuilder
    implements Builder<PortfolioStudentRecord, PortfolioStudentRecordBuilder> {
  _$PortfolioStudentRecord _$v;

  DocumentReference<Object> _userAssociation;
  DocumentReference<Object> get userAssociation => _$this._userAssociation;
  set userAssociation(DocumentReference<Object> userAssociation) =>
      _$this._userAssociation = userAssociation;

  String _photoPortfolio;
  String get photoPortfolio => _$this._photoPortfolio;
  set photoPortfolio(String photoPortfolio) =>
      _$this._photoPortfolio = photoPortfolio;

  String _namaPortfolio;
  String get namaPortfolio => _$this._namaPortfolio;
  set namaPortfolio(String namaPortfolio) =>
      _$this._namaPortfolio = namaPortfolio;

  String _tipePortfolio;
  String get tipePortfolio => _$this._tipePortfolio;
  set tipePortfolio(String tipePortfolio) =>
      _$this._tipePortfolio = tipePortfolio;

  String _deskripsiPortfolio;
  String get deskripsiPortfolio => _$this._deskripsiPortfolio;
  set deskripsiPortfolio(String deskripsiPortfolio) =>
      _$this._deskripsiPortfolio = deskripsiPortfolio;

  String _tanggalPembuatanPortfolio;
  String get tanggalPembuatanPortfolio => _$this._tanggalPembuatanPortfolio;
  set tanggalPembuatanPortfolio(String tanggalPembuatanPortfolio) =>
      _$this._tanggalPembuatanPortfolio = tanggalPembuatanPortfolio;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PortfolioStudentRecordBuilder() {
    PortfolioStudentRecord._initializeBuilder(this);
  }

  PortfolioStudentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAssociation = $v.userAssociation;
      _photoPortfolio = $v.photoPortfolio;
      _namaPortfolio = $v.namaPortfolio;
      _tipePortfolio = $v.tipePortfolio;
      _deskripsiPortfolio = $v.deskripsiPortfolio;
      _tanggalPembuatanPortfolio = $v.tanggalPembuatanPortfolio;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortfolioStudentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PortfolioStudentRecord;
  }

  @override
  void update(void Function(PortfolioStudentRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PortfolioStudentRecord build() {
    final _$result = _$v ??
        new _$PortfolioStudentRecord._(
            userAssociation: userAssociation,
            photoPortfolio: photoPortfolio,
            namaPortfolio: namaPortfolio,
            tipePortfolio: tipePortfolio,
            deskripsiPortfolio: deskripsiPortfolio,
            tanggalPembuatanPortfolio: tanggalPembuatanPortfolio,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
