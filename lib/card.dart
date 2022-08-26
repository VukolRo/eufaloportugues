import 'package:flutter/material.dart';
import 'constants.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 50.0,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.0, color: kGreen),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'vermelho',
                style: kCardTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
