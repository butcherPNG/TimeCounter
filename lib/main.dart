import 'package:timecounter/pages/main_page.dart';
import 'package:timecounter/pages/result.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main () => runApp(MaterialApp(
  theme: ThemeData(fontFamily: 'Poppins'),
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
      '/': (context) => Home(),
        '/result': (context) => resultScreen(),
  },
));

