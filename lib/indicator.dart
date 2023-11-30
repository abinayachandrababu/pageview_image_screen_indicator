import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {

  final bool isActive;

  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 400),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isActive? 15 :10,
      height: 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ?  Colors.black :Colors.grey
      ),
    );
  }
}
