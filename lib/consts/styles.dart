import 'package:doctorapp/consts/colors.dart';
import 'package:flutter/material.dart';

const TextStyle descriptionStyle = TextStyle(
  fontSize: 16,
  color: textLight,
  fontWeight: FontWeight.w200,
);

const textInputDecoration = InputDecoration(
  hintText: "email",
  fillColor: bgWhite,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(100),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(
      Radius.circular(100),
    ),
  ),
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  ),
);
