import 'package:flutter/material.dart';

Widget NotesTag(String text) {
  bool isSelected = false;
  return ChoiceChip(
    selected: isSelected,
    elevation: 0,
    onSelected: (value) {},
    label: Text(
      text,
      style: TextStyle(
        color: Color(0xFF2A394E),
        fontSize: 11,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    ),
    backgroundColor: Color.fromARGB(255, 233, 233, 234),
  );
}
