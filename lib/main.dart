import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/login_page.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/theme/colors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
    theme: ThemeData(
      primaryColor: primary,
    ),
  ));
}
