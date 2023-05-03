// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcollection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubcollectionRecord> _$subcollectionRecordSerializer =
    new _$SubcollectionRecordSerializer();

class _$SubcollectionRecordSerializer
    implements StructuredSerializer<SubcollectionRecord> {
  @override
  final Iterable<Type> types = const [
    SubcollectionRecord,
    _$SubcollectionRecord
  ];
  @override
  final String wireName = 'SubcollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubcollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desription;
    if (value != null) {
      result
        ..add('desription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SubcollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubcollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desription':
          result.desription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SubcollectionRecord extends SubcollectionRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? desription;
  @override
  final int? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubcollectionRecord(
          [void Function(SubcollectionRecordBuilder)? updates]) =>
      (new SubcollectionRecordBuilder()..update(updates))._build();

  _$SubcollectionRecord._(
      {this.name, this.image, this.desription, this.price, this.ffRef})
      : super._();

  @override
  SubcollectionRecord rebuild(
          void Function(SubcollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubcollectionRecordBuilder toBuilder() =>
      new SubcollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubcollectionRecord &&
        name == other.name &&
        image == other.image &&
        desription == other.desription &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, desription.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubcollectionRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('desription', desription)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubcollectionRecordBuilder
    implements Builder<SubcollectionRecord, SubcollectionRecordBuilder> {
  _$SubcollectionRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _desription;
  String? get desription => _$this._desription;
  set desription(String? desription) => _$this._desription = desription;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubcollectionRecordBuilder() {
    SubcollectionRecord._initializeBuilder(this);
  }

  SubcollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _desription = $v.desription;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubcollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubcollectionRecord;
  }

  @override
  void update(void Function(SubcollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubcollectionRecord build() => _build();

  _$SubcollectionRecord _build() {
    final _$result = _$v ??
        new _$SubcollectionRecord._(
            name: name,
            image: image,
            desription: desription,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
