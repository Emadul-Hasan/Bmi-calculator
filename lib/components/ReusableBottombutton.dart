import 'package:flutter/material.dart';
import '../constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.onTap, @required this.buttontext});

  final Function onTap;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttontext,
            style: KBottomcontainertextstyle,
          ),
        ),
        height: KHeightofbottomcontainer,
        color: KColorofbottomcontainer,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
