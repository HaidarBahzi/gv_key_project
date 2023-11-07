import 'package:flutter/material.dart';

Widget authForm() {
  return TextField(
    style: const TextStyle(color: Colors.white),
    obscureText: false,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.home),
      prefixIconColor: Colors.grey,
      hintText: "hintText",
      hintStyle: const TextStyle(color: Colors.grey),
      border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(50))),
    ),
  );
}
