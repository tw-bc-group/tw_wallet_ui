// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Identity> _$identitySerializer = new _$IdentitySerializer();

class _$IdentitySerializer implements StructuredSerializer<Identity> {
  @override
  final Iterable<Type> types = const [Identity, _$Identity];
  @override
  final String wireName = 'Identity';

  @override
  Iterable<Object> serialize(Serializers serializers, Identity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index, specifiedType: const FullType(int)),
      'pubKey',
      serializers.serialize(object.pubKey,
          specifiedType: const FullType(String)),
      'priKey',
      serializers.serialize(object.priKey,
          specifiedType: const FullType(String)),
      'dappId',
      serializers.serialize(object.dappId,
          specifiedType: const FullType(String)),
      'isSelected',
      serializers.serialize(object.isSelected,
          specifiedType: const FullType(bool)),
    ];
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.birthday != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(object.birthday,
            specifiedType: const FullType(String)));
    }
    if (object.balance != null) {
      result
        ..add('balance')
        ..add(serializers.serialize(object.balance,
            specifiedType: const FullType(Amount)));
    }
    if (object.healthCertificateStatus != null) {
      result
        ..add('healthCertificateStatus')
        ..add(serializers.serialize(object.healthCertificateStatus,
            specifiedType: const FullType(String)));
    }
    if (object.healthStatus != null) {
      result
        ..add('healthStatus')
        ..add(serializers.serialize(object.healthStatus,
            specifiedType: const FullType(String)));
    }
    if (object.extra != null) {
      result
        ..add('extra')
        ..add(serializers.serialize(object.extra,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Identity deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IdentityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pubKey':
          result.pubKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priKey':
          result.priKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dappId':
          result.dappId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isSelected':
          result.isSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(Amount)) as Amount;
          break;
        case 'healthCertificateStatus':
          result.healthCertificateStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'healthStatus':
          result.healthStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extra':
          result.extra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Identity extends Identity {
  @override
  final String id;
  @override
  final String name;
  @override
  final int index;
  @override
  final String pubKey;
  @override
  final String priKey;
  @override
  final String dappId;
  @override
  final bool isSelected;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String birthday;
  @override
  final Amount balance;
  @override
  final String healthCertificateStatus;
  @override
  final String healthStatus;
  @override
  final String extra;
  String __address;
  DID __did;

  factory _$Identity([void Function(IdentityBuilder) updates]) =>
      (new IdentityBuilder()..update(updates)).build();

  _$Identity._(
      {this.id,
      this.name,
      this.index,
      this.pubKey,
      this.priKey,
      this.dappId,
      this.isSelected,
      this.phone,
      this.email,
      this.birthday,
      this.balance,
      this.healthCertificateStatus,
      this.healthStatus,
      this.extra})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Identity', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Identity', 'name');
    }
    if (index == null) {
      throw new BuiltValueNullFieldError('Identity', 'index');
    }
    if (pubKey == null) {
      throw new BuiltValueNullFieldError('Identity', 'pubKey');
    }
    if (priKey == null) {
      throw new BuiltValueNullFieldError('Identity', 'priKey');
    }
    if (dappId == null) {
      throw new BuiltValueNullFieldError('Identity', 'dappId');
    }
    if (isSelected == null) {
      throw new BuiltValueNullFieldError('Identity', 'isSelected');
    }
  }

  @override
  String get address => __address ??= super.address;

  @override
  DID get did => __did ??= super.did;

  @override
  Identity rebuild(void Function(IdentityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityBuilder toBuilder() => new IdentityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Identity &&
        id == other.id &&
        name == other.name &&
        index == other.index &&
        pubKey == other.pubKey &&
        priKey == other.priKey &&
        dappId == other.dappId &&
        isSelected == other.isSelected &&
        phone == other.phone &&
        email == other.email &&
        birthday == other.birthday &&
        balance == other.balance &&
        healthCertificateStatus == other.healthCertificateStatus &&
        healthStatus == other.healthStatus &&
        extra == other.extra;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        name.hashCode),
                                                    index.hashCode),
                                                pubKey.hashCode),
                                            priKey.hashCode),
                                        dappId.hashCode),
                                    isSelected.hashCode),
                                phone.hashCode),
                            email.hashCode),
                        birthday.hashCode),
                    balance.hashCode),
                healthCertificateStatus.hashCode),
            healthStatus.hashCode),
        extra.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Identity')
          ..add('id', id)
          ..add('name', name)
          ..add('index', index)
          ..add('pubKey', pubKey)
          ..add('priKey', priKey)
          ..add('dappId', dappId)
          ..add('isSelected', isSelected)
          ..add('phone', phone)
          ..add('email', email)
          ..add('birthday', birthday)
          ..add('balance', balance)
          ..add('healthCertificateStatus', healthCertificateStatus)
          ..add('healthStatus', healthStatus)
          ..add('extra', extra))
        .toString();
  }
}

class IdentityBuilder implements Builder<Identity, IdentityBuilder> {
  _$Identity _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  String _pubKey;
  String get pubKey => _$this._pubKey;
  set pubKey(String pubKey) => _$this._pubKey = pubKey;

  String _priKey;
  String get priKey => _$this._priKey;
  set priKey(String priKey) => _$this._priKey = priKey;

  String _dappId;
  String get dappId => _$this._dappId;
  set dappId(String dappId) => _$this._dappId = dappId;

  bool _isSelected;
  bool get isSelected => _$this._isSelected;
  set isSelected(bool isSelected) => _$this._isSelected = isSelected;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _birthday;
  String get birthday => _$this._birthday;
  set birthday(String birthday) => _$this._birthday = birthday;

  Amount _balance;
  Amount get balance => _$this._balance;
  set balance(Amount balance) => _$this._balance = balance;

  String _healthCertificateStatus;
  String get healthCertificateStatus => _$this._healthCertificateStatus;
  set healthCertificateStatus(String healthCertificateStatus) =>
      _$this._healthCertificateStatus = healthCertificateStatus;

  String _healthStatus;
  String get healthStatus => _$this._healthStatus;
  set healthStatus(String healthStatus) => _$this._healthStatus = healthStatus;

  String _extra;
  String get extra => _$this._extra;
  set extra(String extra) => _$this._extra = extra;

  IdentityBuilder();

  IdentityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _index = _$v.index;
      _pubKey = _$v.pubKey;
      _priKey = _$v.priKey;
      _dappId = _$v.dappId;
      _isSelected = _$v.isSelected;
      _phone = _$v.phone;
      _email = _$v.email;
      _birthday = _$v.birthday;
      _balance = _$v.balance;
      _healthCertificateStatus = _$v.healthCertificateStatus;
      _healthStatus = _$v.healthStatus;
      _extra = _$v.extra;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Identity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Identity;
  }

  @override
  void update(void Function(IdentityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Identity build() {
    final _$result = _$v ??
        new _$Identity._(
            id: id,
            name: name,
            index: index,
            pubKey: pubKey,
            priKey: priKey,
            dappId: dappId,
            isSelected: isSelected,
            phone: phone,
            email: email,
            birthday: birthday,
            balance: balance,
            healthCertificateStatus: healthCertificateStatus,
            healthStatus: healthStatus,
            extra: extra);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
