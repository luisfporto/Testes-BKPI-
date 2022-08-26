// @dart=2.9
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  final String _key = 'key';

  save(String user) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({'user': user, 'isAuth': true}));
  }

  Future<bool> isAuth() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.getString(_key);
    var jsonResult = prefs.getString(_key);
    if (jsonResult != null) {
      var mapUser = jsonDecode(jsonResult);
      return mapUser('isAuth');
    }
    return false;
  }
}
