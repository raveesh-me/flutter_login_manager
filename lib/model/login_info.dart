import 'package:meta/meta.dart';

class LoginInfo {
  bool isLoggedIn;
  bool isLoginSkipped;
  bool isLoginPaid;
  String loginKey;

  LoginInfo(
      {@required this.isLoggedIn,
      @required this.isLoginSkipped,
      this.isLoginPaid,
      this.loginKey});
}
