import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	int? id;
	@JsonKey(name: 'customer_id') 
	int? customerId;
	String? name;
	String? email;
	String? phone;
	String? image;
	@JsonKey(name: 'role_id') 
	int? roleId;
	dynamic branch;
	@JsonKey(name: 'wallet_total') 
	int? walletTotal;
	@JsonKey(name: 'wallet_used') 
	int? walletUsed;
	@JsonKey(name: 'wallet_balance') 
	int? walletBalance;
	@JsonKey(name: 'email_verified_at') 
	dynamic emailVerifiedAt;
	dynamic mode;
	int? active;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;
	@JsonKey(name: 'country_alpha_code') 
	String? countryAlphaCode;
	@JsonKey(name: 'country_code') 
	String? countryCode;
	@JsonKey(name: 'phone_number') 
	String? phoneNumber;
	@JsonKey(name: 'img_url') 
	String? imgUrl;

	Data({
		this.id, 
		this.customerId, 
		this.name, 
		this.email, 
		this.phone, 
		this.image, 
		this.roleId, 
		this.branch, 
		this.walletTotal, 
		this.walletUsed, 
		this.walletBalance, 
		this.emailVerifiedAt, 
		this.mode, 
		this.active, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
		this.countryAlphaCode, 
		this.countryCode, 
		this.phoneNumber, 
		this.imgUrl, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
