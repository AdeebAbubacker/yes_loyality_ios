// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePasswordModel _$UpdatePasswordModelFromJson(Map<String, dynamic> json) =>
    UpdatePasswordModel(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      misc: json['misc'] as List<dynamic>?,
      redirect: json['redirect'],
    );

Map<String, dynamic> _$UpdatePasswordModelToJson(
        UpdatePasswordModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'misc': instance.misc,
      'redirect': instance.redirect,
    };
