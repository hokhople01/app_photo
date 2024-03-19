import 'package:app_photo/screens/home_screens.dart';
import 'package:app_photo/screens/start_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app photo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        '/':(_)=> const StartScreens(),
        '/home':(_)=> const HomeScreens(),


    },
      initialRoute: '/',
    );
  }
}
