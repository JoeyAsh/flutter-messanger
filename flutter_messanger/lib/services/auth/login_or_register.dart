import 'package:flutter/material.dart';
import 'package:flutter_messanger/pages/login_page.dart';
import 'package:flutter_messanger/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  AuthPage currentPage = AuthPage.login;

  void route(AuthPage page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (currentPage) {
      case AuthPage.login:
        return LoginPage(onTap: () {
          route(AuthPage.register);
        });
      default:
        return RegisterPage(onTap: () {
          route(AuthPage.login);
        });
    }
  }
}

enum AuthPage {
  login,
  register
}


