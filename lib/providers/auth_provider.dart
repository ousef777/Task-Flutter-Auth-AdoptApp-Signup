import 'package:adopt_app/models/user.dart';
import 'package:adopt_app/services/auth_services.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{
  String token = "";
  late User user;
  void signup({required User user}) async {
    token = await AuthServices().signup(user: user);
    this.user = user;
    print(token);
    notifyListeners();
  }
}