import 'package:users/models/users.dart';

class UserModel {
  int? skip;
  int? total;
  int? limit;
  List<Users>? users;

  UserModel({
    required this.limit,
    required this.skip,
    required this.total,
    required this.users,
  });

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        limit: json['limit']as int?,
        skip: json['skip']as int?,
        total: json['total']as int?,
        users: (json['users'] as List).map((e) => Users.fromJson(e)).toList(),
      );
}
