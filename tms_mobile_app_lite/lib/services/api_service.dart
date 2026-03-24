import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://10.0.2.2:8000/api';

  // Async function with a type of Map (key value pairs) key must be in string and values can be any type 
  // login handles user logins
  static Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users/login/'),
      // tells django sent data are JSON data 
      headers: {'Content-Type': 'application/json'},
      // sends data to backend
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      // if successful, convert JSON to dart map
      return jsonDecode(response.body);
    } else {
      // else throw an exception
      throw Exception('Login failed');
    }
  }
}