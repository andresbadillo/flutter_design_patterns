import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:design_patterns/screens/basic_design.dart';
import 'package:design_patterns/screens/home_screen.dart';
import 'package:design_patterns/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (context) => BasicDesignScreen(),
        'scroll_design': (context) => ScrollScreen(),
        'home_screen': (context) => HomeScreen(),
      },
    );
  }
}
