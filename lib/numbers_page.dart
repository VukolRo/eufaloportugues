import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';

class NumbersPage extends StatelessWidget {
  // NumbersPage()({});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Eu falo português',
          style: kNavBarTextStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'icons/vocabulary.svg',
              color: kBlackText,
            ),
            tooltip: 'Vocabulário',
            onPressed: () {
              Navigator.pushNamed(context, '/vocabulary');
            },
          ),
          IconButton(
            icon: const Icon(Icons.family_restroom),
            color: kBlackText,
            tooltip: 'Conjugação de verbos',
            onPressed: () {
              Navigator.pushNamed(context, '/verbs');
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'icons/numbers.svg',
              color: kGreen,
            ),
            tooltip: 'Números',
            onPressed: () {
              Navigator.pushNamed(context, '/numbers');
            },
          ),
        ],
      ),
    );
  }
}
