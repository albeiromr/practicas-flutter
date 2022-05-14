import 'package:flutter/material.dart';
import 'package:free_practice/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "componente personalizado",
      theme: ThemeData.dark(),
      initialRoute: "home",
      routes: <String, WidgetBuilder>{
        "home":(context) => const HomeScreen()
      },
    );
  }
}