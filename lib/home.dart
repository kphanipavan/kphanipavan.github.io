import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      key: UniqueKey(),
      child: Column(children:[Text('Welcome')]),
    );
  }
}