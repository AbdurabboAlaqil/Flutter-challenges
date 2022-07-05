import 'package:e_shope/modules/login_screen/login.dart';
import 'package:e_shope/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
          elevation: 0,
          unselectedIconTheme: IconThemeData(
            color: Colors.blue,
            size: 29,

          ),
           selectedIconTheme: IconThemeData(
             color: Colors.blue[300],
             size: 27
           )
         ),
         appBarTheme: AppBarTheme(
           backgroundColor: Colors.orange[100],
           titleSpacing: 20,
           centerTitle: true,
            elevation:  0
         )
      ),
      darkTheme: ThemeData(),
      //themeMode: ThemeMode.dark,
      home: Login(),
    );
  }
}