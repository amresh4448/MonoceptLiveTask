import 'package:flutter/material.dart';

class AppGradients {
  static LinearGradient get customGradient {
    return const LinearGradient(
       begin: Alignment.topLeft,
                end: Alignment.bottomRight,
      colors: [Colors.orange, Colors.red],
      tileMode: TileMode.mirror,
    );





    
  }
}
