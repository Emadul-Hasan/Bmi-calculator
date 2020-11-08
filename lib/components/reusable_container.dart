import 'package:flutter/material.dart';

class Reusablecontainer extends StatelessWidget {
  Reusablecontainer(
      {@required this.colour, this.reusablechild, this.gesturetap});
  final Color colour;
  final Widget reusablechild;
  final Function gesturetap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesturetap,
      child: Container(
        child: reusablechild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
