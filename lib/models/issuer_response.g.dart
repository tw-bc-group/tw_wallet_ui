// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuer_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssuerResponse> _$issuerResponseSerializer =
    new _$IssuerResponseSerializer();

class _$IssuerResponseSerializer
    implements StructuredSerializer<IssuerResponse> {
  @override
  final Iterable<Type> types = const [IssuerResponse, _$IssuerResponse];
  @override
  final String wireName = 'IssuerResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, IssuerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'vc_types',
      serializers.serialize(object.vcTypes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VcType)])),
    ];

    return result;
  }

  @override
  IssuerResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssuerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vc_types':
          result.vcTypes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(VcType)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$IssuerResponse extends IssuerResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<VcType> vcTypes;

  factory _$IssuerResponse([void Function(IssuerResponseBuilder) updates]) =>
      (new IssuerResponseBuilder()..update(updates)).build();

  _$IssuerResponse._({this.id, this.name, this.vcTypes}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('IssuerResponse', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('IssuerResponse', 'name');
    }
    if (vcTypes == null) {
      throw new BuiltValueNullFieldError('IssuerResponse', 'vcTypes');
    }
  }

  @override
  IssuerResponse rebuild(void Function(IssuerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuerResponseBuilder toBuilder() =>
      new IssuerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuerResponse &&
        id == other.id &&
        name == other.name &&
        vcTypes == other.vcTypes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), vcTypes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssuerResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('vcTypes', vcTypes))
        .toString();
  }
}

class IssuerResponseBuilder
    implements Builder<IssuerResponse, IssuerResponseBuilder> {
  _$IssuerResponse _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<VcType> _vcTypes;
  ListBuilder<VcType> get vcTypes =>
      _$this._vcTypes ??= new ListBuilder<VcType>();
  set vcTypes(ListBuilder<VcType> vcTypes) => _$this._vcTypes = vcTypes;

  IssuerResponseBuilder();

  IssuerResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _vcTypes = _$v.vcTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuerResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IssuerResponse;
  }

  @override
  void update(void Function(IssuerResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssuerResponse build() {
    _$IssuerResponse _$result;
    try {
      _$result = _$v ??
          new _$IssuerResponse._(id: id, name: name, vcTypes: vcTypes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vcTypes';
        vcTypes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IssuerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
