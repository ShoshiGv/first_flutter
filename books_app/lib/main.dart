import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isDarkMode = true;
  void toggleTheme(){
    isDarkMode((){
      isDarkMode = ! isDarkMode;
    });
  }

Widget build(BuildContext context) {
  return materialApp(
    debugsShowCheckedModeBanner: false,
    theme: isDarkMode ? ThemData.dark() : ThemData.light(),
    home: HomeScreen(
      toggleTheme: toggleTheme,
    ),
  ); //MaterialApp

}




}