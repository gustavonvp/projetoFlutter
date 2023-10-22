import 'package:flutter/material.dart';
import 'package:project_flutter/pages/home/home_page.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
