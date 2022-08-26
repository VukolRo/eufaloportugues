import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';
import 'card.dart';

class VocabularyPage extends StatelessWidget {
  // VocabularyPage({});

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
            padding: EdgeInsets.all(0.0),
            icon: SvgPicture.asset(
              'icons/vocabulary.svg',
              color: kGreen,
            ),
            color: kGreen,
            onPressed: () {
              Navigator.pushNamed(context, '/vocabulary');
            },
          ),
          IconButton(
            padding: EdgeInsets.all(0.0),
            icon: SvgPicture.asset(
              'icons/verbs.svg',
              color: kBlackText,
            ),
            color: kBlackText,
            onPressed: () {
              Navigator.pushNamed(context, '/verbs');
            },
          ),
          IconButton(
            padding: EdgeInsets.all(0.0),
            icon: SvgPicture.asset(
              'icons/numbers.svg',
              color: kBlackText,
            ),
            color: kBlackText,
            onPressed: () {
              Navigator.pushNamed(context, '/numbers');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vocabulário',
                    style: kFilterRowTextStyle,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kBackgroundGray,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Text(
                      '752',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kFilterButtonColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: IconButton(
                      padding: EdgeInsets.all(1.0),
                      constraints: BoxConstraints(),
                      icon: Icon(Icons.filter_list),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: kBackgroundGray),
                      child: Text(
                        'pt',
                        style: kLanguageRowPressedTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'ru',
                        style: kLanguageRowTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'misturado',
                        style: kLanguageRowTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Cards(),
                  Cards(),
                  Cards(),
                  Cards(),
                  Cards(),
                  Cards(),
                  Cards(),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    color: kRed, borderRadius: BorderRadius.circular(25.0)),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(Icons.autorenew),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
