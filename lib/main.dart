import 'package:eufaloportugues/verbs_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'vocabulary_page.dart';
import 'verbs_page.dart';
import 'numbers_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/vocabulary',
      routes: {
        '/vocabulary': (context) => VocabularyPage(),
        '/verbs': (context) => VerbsPage(),
        '/numbers': (context) => NumbersPage(),
      },
    );
  }
}
