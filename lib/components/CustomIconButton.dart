import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  IconData widgetVer;
  Function fonksiyonVer;
  CustomIconButton({required this.widgetVer, required this.fonksiyonVer});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(
        widgetVer,
      ),
      onPressed: () {
        fonksiyonVer();
        
      },
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      
      shape: CircleBorder(),
    );
  }
}