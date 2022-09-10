import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifsp_app/pages/LoginPage.dart';
import 'package:ifsp_app/pages/homePage.dart';

class indexController extends StatelessWidget {
  const indexController({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App IFSP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage()
      },
    );
  }
}
