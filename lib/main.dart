import 'package:flutter/material.dart';
import 'constans/app_colors.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const CafeApp());
}

class CafeApp extends StatelessWidget {
  const CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CafeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.cafeOscuro,
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.crema,
          elevation: 0,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
