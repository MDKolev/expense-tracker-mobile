// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final IconData prefixIcon;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.name,
    required this.prefixIcon,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: 280,
        child: TextField(
          enabled: true,
          controller: controller,
          textCapitalization: textCapitalization,
          maxLength: 32,
          maxLines: 1,
          obscureText: obscureText,
          keyboardType: inputType,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            prefixIcon: Container(child: Icon(prefixIcon, color: Colors.white)),
            isDense: true,
            labelText: name,
            counterText: "",
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ));
  }
}
