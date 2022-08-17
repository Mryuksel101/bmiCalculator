import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  final Function fonksiyonGir;
  final String textGir;
  BottomButton({required this.fonksiyonGir, required this.textGir});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        fonksiyonGir();
      },
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color: Colors.red,
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Text(
            textGir,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}