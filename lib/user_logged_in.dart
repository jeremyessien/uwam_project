import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uwam_project/screens/auth/sigunp.dart';
import 'package:uwam_project/screens/home_screen.dart';
import 'package:uwam_project/splashscreen.dart';

Widget userLoggedIn(BuildContext context, AsyncSnapshot<User?> snapshot) {
  if (snapshot.connectionState == ConnectionState.waiting) {
    return SplashScreen();
  } else if (snapshot.hasData) {
    return HomeScreen();
  } else {
    return SignupPage();
  }
}
