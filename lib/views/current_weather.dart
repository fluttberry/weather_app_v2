import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app_v2/views/additional_information.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '$temp',
          style: const TextStyle(fontSize: 46.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '$location',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 18.0,
            color: const Color(0xff5a5a5a),
          ),
        ),
        const SizedBox(
          height: 60.0,
        ),
        const Text(
          'Additional Information',
          style: TextStyle(
            fontSize: 24.0,
            color: Color(0xdd212121),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        const SizedBox(
          height: 20.0,
        ),
        additionalInformation('24', '2', '1014', '24.6'),
      ],
    ),
  );
}
