import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {

  final Function onTap;
  final Color color;
  final IconData icon;

  const BotonPersonalizado({
    Key? key,
    required this.onTap,
    required this.color,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: color
        ),
        child: Icon(icon),
      ),
    );
  }
}
