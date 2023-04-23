import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui_design/widgets/two_side_round_button.dart';

import '../consttants.dart';
import 'book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 218,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 195,
              decoration: BoxDecoration(
                color: const Color(0xffEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 10.0),
                    child: const Text(
                      "New York Time Best For 11th March",
                      style: TextStyle(
                        fontSize: 12,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    'How to Win \n   Friends & Influence',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Text('Gary Venchuk',
                      style: TextStyle(color: kLightBlackColor)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: 4.9),
                        ),
                        Expanded(
                            child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/book-3.png',
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: SizedBox(
              height: 40,
              child: TwoSlideRounedButton(
                text: "Read",
                radious: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
