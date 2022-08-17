import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color colour;
  final Widget? widgetVer;
  Function? functionVer;
  CustomContainer({required this.colour, this.widgetVer, this.functionVer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        functionVer!();
        
      },
      child: Container(
        child: widgetVer,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

