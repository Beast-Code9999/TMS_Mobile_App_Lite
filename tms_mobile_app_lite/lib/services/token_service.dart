// Store and retrieve JWT token locally

import 'package:shared_preferences/shared_preferences.dart';

class TokenService {
  static const String _accessKey = 'access_token';
  static const String _refreshKey = 'refresh_token';

  // saves JWT token in local storage
  static Future<void> saveTokens(String access, String refresh) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_accessKey, access);
    await prefs.setString(_refreshKey, refresh);
  }

  // retrieves JWT token 
  static Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_accessKey);
  }

  // Delete JWT token
  static Future<void> clearTokens() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_accessKey);
    await prefs.remove(_refreshKey);
  }
}
