import 'package:get_storage/get_storage.dart';

class UserPrefs{
  final _userSetting = GetStorage("USER_INFO");

  static Future<void> initStorage() async {
    await GetStorage.init("USER_INFO");
  }

  String get userToken => _userSetting.read("user_token") ?? "";
  String get userName  => _userSetting.read("user_name") ?? "";

  void saveUserToken(String token) {
    _userSetting.write("user_token", token);
  }

  void saveUserName(String name) {
    _userSetting.write("user_name", name);
  }

}