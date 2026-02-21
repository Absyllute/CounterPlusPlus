import 'package:counter_plus_plus/home-screen/home_screen.dart';
import 'package:counter_plus_plus/main-ui-variables/colours.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),

      theme: ThemeData(

        fontFamily: 'Nunito',
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600
          )
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colours.primaryColour,
            foregroundColor: Colors.white,
            alignment: Alignment.center,
            elevation: 6
          )
        ),
        
        scaffoldBackgroundColor: Colours.secondaryColour,

      ),
    );
  }
}