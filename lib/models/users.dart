import 'address.dart';
import 'bank.dart';
import 'company.dart';
import 'hair.dart';

class Users {
  String? firstName;
  String? lastName;
  String? maidenName;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  String? eyeColor;
  String? domain;
  String? ip;
  String? macAddress;
  String? university;
  String? ein;
  String? ssn;
  String? userAgent;
  int? id;
  int? age;
  int? height;
  int? weight;
  Hair? hair;
  Address? address;
  Bank? bank;
  Company? company;

  Users({
    required this.company,
    required this.address,
    required this.age,
    required this.bank,
    required this.birthDate,
    required this.bloodGroup,
    required this.domain,
    required this.ein,
    required this.email,
    required this.eyeColor,
    required this.firstName,
    required this.gender,
    required this.hair,
    required this.height,
    required this.id,
    required this.image,
    required this.ip,
    required this.lastName,
    required this.macAddress,
    required this.maidenName,
    required this.password,
    required this.phone,
    required this.ssn,
    required this.university,
    required this.userAgent,
    required this.username,
    required this.weight,
  });

  factory Users.fromJson(Map<String, Object?> json) => Users(
        company: Company.fromJson(json['company'] as Map<String, Object?>),
        address: Address.fromJson(json['address'] as Map<String, Object?>),
        age: json['age'] as int?,
        bank: Bank.fromJson(json['bank'] as Map<String, Object?>),
        birthDate: json['birthDate'] as String?,
        bloodGroup: json['bloodGroup'] as String?,
        domain: json['domain'] as String?,
        ein: json['ein'] as String?,
        email: json['email'] as String?,
        eyeColor: json['eyeColor'] as String?,
        firstName: json['firstName'] as String?,
        gender: json['gender'] as String?,
        hair: Hair.fromJson(json['hair'] as Map<String, Object?>),
        height: json['height'] as int?,
        id: json['id'] as int?,
        image: json['image'] as String?,
        ip: json['ip'] as String?,
        lastName: json['lastName'] as String?,
        macAddress: json['macAddress'] as String?,
        maidenName: json['maidenName'] as String?,
        password: json['password'] as String?,
        phone: json['phone'] as String?,
        ssn: json['ssn'] as String?,
        university: json['university'] as String?,
        userAgent: json['userAgent'] as String?,
        username: json['username'] as String?,
        weight: json['weight'] as int?,
      );
}
