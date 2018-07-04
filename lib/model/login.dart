import 'dart:async';
import 'login_info.dart';

Future<LoginInfo> login() async {
  await Future.delayed(Duration(seconds: 2));
  return LoginInfo(
      isLoggedIn: true,
      isLoginPaid: true,
      isLoginSkipped: false,
      loginKey: 'keyHere');
}

Future<LoginInfo> logout() async {
  await Future.delayed(Duration(seconds: 2));
  return LoginInfo(
      isLoggedIn: true,
      isLoginPaid: true,
      isLoginSkipped: false,
      loginKey: 'keyHere');
}

Future<LoginInfo> skipLogin() async {
  await Future.delayed(Duration(seconds: 2));
  return LoginInfo(
      isLoggedIn: true,
      isLoginPaid: true,
      isLoginSkipped: false,
      loginKey: 'keyHere');
}