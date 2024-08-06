import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';

class ApplicationThem{

static ThemeData lightthem= ThemeData(
  scaffoldBackgroundColor: AppColor.scaffoldbackground,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent
  ),
  textTheme: TextTheme(
   bodyLarge: TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'poppins',
  fontSize: 30,
),

    bodyMedium: TextStyle(

fontSize: 30,
fontWeight: FontWeight.w700,
fontFamily: 'poppins'),
     bodySmall: TextStyle(
       fontFamily: 'poppins',
fontSize: 22,
fontWeight: FontWeight.bold,
       color: AppColor.whitecolor
),
),
);
}