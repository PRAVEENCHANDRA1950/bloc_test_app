import 'package:bloc_test/core/const/urls.dart';
// import 'package:bloc_test/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:logger/logger.dart';

class ApiClient {
  var logger = Logger();

  Future<Map<String, dynamic>> post(String endpoint,
      {Map<String, dynamic>? body}) async {
    final response = await http.post(
      Uri.parse("${Urls.baseurl}/$endpoint"),
      body: json.encode(body),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode != 200) {
      logger.i("Info log $response");
    }
    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> get(
    String endpoint,
  ) async {
    final response = await http.get(
      Uri.parse("${Urls.baseurl}/$endpoint"),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode != 200) {
      logger.i("Info log $response");
    }
    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> update(String endpoint,
      {Map<String, dynamic>? body}) async {
    final response = await http.put(
      Uri.parse("${Urls.baseurl}/$endpoint"),
      body: json.encode(body),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode != 200) {
      logger.i("Info log $response");
    }
    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> delete(String endpoint,
      {Map<String, dynamic>? body}) async {
    final response = await http.delete(
      Uri.parse("${Urls.baseurl}/$endpoint"),
      body: json.encode(body),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode != 200) {
      logger.i("Info log $response");
    }
    return json.decode(response.body);
  }
}
