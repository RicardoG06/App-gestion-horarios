import 'package:flutter/material.dart';
import 'Pages/login.dart';
import 'Pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Gestion Horarios',
        initialRoute: 'login',
        routes: {'login': (_) => LoginPage(), 'singup': (_) => SignUpPage()});
  }
}
