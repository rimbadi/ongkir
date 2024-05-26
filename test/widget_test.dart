import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ongkir/app/data/models/user_model.dart';

void main() async {
  Uri urlGet = Uri.parse('https://reqres.in/api/users/2');
  final response = await http.get(urlGet);

  final user = UserModel.fromJson(json.decode(response.body) as Map<String, dynamic>);
  final data = user.data;
  final support = user.support;
  print("${data.firstName} ${data.lastName}");

  Uri urlPost = Uri.parse('https://reqres.in/api/users');
  final responsePost = await http.post(urlPost, body: {"name": "badi", "job": "PM"});

  print(responsePost.body);
}
