import 'package:flutter/material.dart';

class ColumnaPersonalizada extends StatelessWidget {
  final String text;
  final Widget child;

  const ColumnaPersonalizada(
      {Key? key, required this.text, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style: const TextStyle(fontSize: 18),),
        child
      ],
    );
  }
}
