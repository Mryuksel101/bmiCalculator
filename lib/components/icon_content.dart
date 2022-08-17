import 'package:flutter/material.dart';

import '../constant.dart';

class CustomColumn extends StatelessWidget {
    final String cinsiyetSecimi;
    final IconData iconGir;

    CustomColumn({required this.cinsiyetSecimi, required this.iconGir});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(
          iconGir,
          size: 80.0,
        ),

        SizedBox(
          height: 15.0,
        ),

        Text(
          cinsiyetSecimi,
          style: kLabelTextStyle,
        )

      ],
    );
  }
}