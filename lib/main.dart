import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:users/models/users.dart';

void main() async {
  String base = "https://dummyjson.com";

  Uri uri = Uri.parse("$base/users/2");

  http.Response response = await http.get(uri);

  Map<String, Object?> jsonResponse = jsonDecode(response.body);
  Users? user = Users.fromJson(jsonResponse);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "${user.firstName} ${user.lastName}",
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(user.image!),
          ),
        ),
      ),
    ),
  );
}
