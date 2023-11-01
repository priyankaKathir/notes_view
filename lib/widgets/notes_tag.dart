import 'package:flutter/material.dart';

Widget NotesTag(String text) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: 100,
      height: 25,
      child: OutlinedButton(
        onPressed: () => print('pressed'),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF2A394E),
            fontSize: 11,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFFF4F5F6)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
        ),
      ),
    ),
  );
}
