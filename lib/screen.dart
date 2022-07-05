import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
   Screen3({
    Key? key,
    required this.title,
    }) : super(key: key);
   final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: AppBar(
        title: Text(title),
      ),
      body: Container(
      color: Colors.grey[100],
      ),
    );
  }
}
