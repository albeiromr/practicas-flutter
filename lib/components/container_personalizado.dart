import 'package:flutter/material.dart';

class ContainerPersonalizado extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final double height;
  final double width;
  final Color color;

  const ContainerPersonalizado(
      {Key? key,
      required this.child,
      required this.height,
      required this.width,
      required this.onTap,
      required this.color
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: child
      ),
    );
  }
}
