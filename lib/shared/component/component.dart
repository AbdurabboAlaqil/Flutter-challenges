import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  final TextInputType keybordTyp;
  final String labelText;
  final IconData icon;
  final TextEditingController controller;
  final ValueChanged<String> onFieldSubmitted;
  final FocusNode? focusNode;
  final FormFieldValidator<String> validator;
  const MTextField(
      {
        Key ?key,
        required this.keybordTyp,
      required this.labelText,
      required this.icon,
      required this.controller,
      required this.onFieldSubmitted,
      this.focusNode,
      required this.validator
      }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        keyboardType: keybordTyp,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            prefixIcon: Icon(icon)));
  }
}
