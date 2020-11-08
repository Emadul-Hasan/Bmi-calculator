import 'package:flutter/material.dart';

import '../constants.dart';

class Reuseablecontent extends StatelessWidget {
  Reuseablecontent({@required this.mainicon, @required this.maintext});
  final IconData mainicon;
  final String maintext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          mainicon,
          size: KIconsize,
        ),
        SizedBox(
          height: KGap,
        ),
        Text(
          maintext,
          style: TextStyle(
            fontSize: KTextfontsize,
          ),
        ),
      ],
    );
  }
}
