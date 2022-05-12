import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void setCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[50]),
      child: Center(
          child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          height: 90,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "clicked $counter times",
            textDirection: TextDirection.ltr,
            style: const TextStyle(fontSize: 35)
          ),
        ),
        onTap: () => setCounter(),
      )),
    );
  }
}
