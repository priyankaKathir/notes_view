import 'package:flutter/material.dart';

Widget ActionButton(Color color, IconData icon, String message) {
  return Tooltip(
    message: message,
    child: ElevatedButton(
      onPressed: () {},
      child: Icon(
        icon,
        color: color,
        size: 20,
      ),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          foregroundColor: color.withOpacity(0.1),
          backgroundColor: Color.fromARGB(255, 227, 235, 241).withOpacity(0.5),
          elevation: 0),
    ),
  );
}
