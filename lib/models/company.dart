import 'package:users/models/address.dart';

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });

  factory Company.fromJson(Map<String, Object?> json) => Company(
        address: Address.fromJson(json['address'] as Map<String, Object?>),
        department: json['department'] as String?,
        name: json['name'] as String?,
        title: json['title'] as String?,
      );
}
