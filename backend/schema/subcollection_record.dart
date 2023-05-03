import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'subcollection_record.g.dart';

abstract class SubcollectionRecord
    implements Built<SubcollectionRecord, SubcollectionRecordBuilder> {
  static Serializer<SubcollectionRecord> get serializer =>
      _$subcollectionRecordSerializer;

  String? get name;

  String? get image;

  String? get desription;

  int? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SubcollectionRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..desription = ''
    ..price = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection')
          : FirebaseFirestore.instance.collectionGroup('subcollection');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('subcollection').doc();

  static Stream<SubcollectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubcollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubcollectionRecord._();
  factory SubcollectionRecord(
          [void Function(SubcollectionRecordBuilder) updates]) =
      _$SubcollectionRecord;

  static SubcollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubcollectionRecordData({
  String? name,
  String? image,
  String? desription,
  int? price,
}) {
  final firestoreData = serializers.toFirestore(
    SubcollectionRecord.serializer,
    SubcollectionRecord(
      (s) => s
        ..name = name
        ..image = image
        ..desription = desription
        ..price = price,
    ),
  );

  return firestoreData;
}
