import 'package:flutter/material.dart';
import 'package:tarea_1_2/HomePage.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color.fromARGB(255, 0, 0, 0).withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) =>  const HomePage(),
      },
    );
  }
}