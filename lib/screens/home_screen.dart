import 'package:flutter/material.dart';
import 'dart:math';
import 'package:free_practice/components/components.dart';

import '../helpers/genre_enum.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final activeColor = Colors.white30;
  final inactiveColor = Colors.white12;
  Genre? selectedGenre;
  int height = 160;
  int weight = 60;
  int age = 25;
  String bmi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$selectedGenre"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerPersonalizado(
                    width: 188,
                    height: 70,
                    color: selectedGenre == Genre.male? activeColor : inactiveColor,
                    onTap: () =>  setState(() {
                        selectedGenre = Genre.male;
                    }),
                    child: const Text(
                      'Male',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ContainerPersonalizado(
                    width: 188,
                    height: 70,
                    color: selectedGenre == Genre.female ? activeColor : inactiveColor,
                    onTap: () => setState(() {
                        selectedGenre = Genre.female;
                    }),
                    child: const Text(
                      'Female',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
