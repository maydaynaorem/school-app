import 'package:flutter/material.dart';
import 'package:loginpage_ui/main.dart';
import 'Login_screen.dart';

void main() => runApp(const LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Login UI",
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const EschoolApp());
  }
}

class EschoolApp extends StatefulWidget {
  const EschoolApp({Key? key}) : super(key: key);

  @override
  State<EschoolApp> createState() => _EschoolAppState();
}

class _EschoolAppState extends State<EschoolApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "E-school App",
          ),
        ),
        body: const LoginScreen());
  }
}
