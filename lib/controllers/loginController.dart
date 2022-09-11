import 'package:flutter/cupertino.dart';

class Login {
  String? _login;
  String? _pswd;

  String get login {
    return _login!;
  }

  void set login(String login) {
    this._login = login;
  }

  void set pswd(String pswd) {
    this._pswd = pswd;
  }

  void verifyCredentials(BuildContext context) {
    if (_login == 'user' && _pswd == 'passwd') {
      Navigator.pushNamed(context, '/home');
    }
  }

  void logout(BuildContext context) {
    login = '';
    pswd = '';
    Navigator.pushNamed(context, '/');
  }
}
