 import 'package:flutter/material.dart';

void navToScreen(BuildContext context, Widget screen) {
     Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>screen,
        ));
  }