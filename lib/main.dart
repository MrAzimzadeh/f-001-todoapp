import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirstappp1/screen/splash_screen.dart';
import 'package:myfirstappp1/static/text/ui_txt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Build iCERISINDE OLACAQ U9I kodlari
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      
      theme: ThemeData(
        primarySwatch: Colors.red,
        colorScheme: ColorScheme.light(
          primary: Color.fromRGBO(250, 168, 133, 1),
          onPrimary: Colors.white,
          secondary: Color.fromRGBO(250, 168, 133, 1),
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.light,
          inversePrimary: Colors.red,
        ),
      ),
      home: SplashScreen(),
      title: AppTextAz.appName,
    );
  }
}
