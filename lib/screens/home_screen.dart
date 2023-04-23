import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui_design/screens/details_screen.dart';
import 'package:furniture_app_ui_design/widgets/reading_list_card.dart';
import '../widgets/best_of _day_card.dart';
import '../widgets/countineu_reading_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_page_bg.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headlineLarge,
                        children: const [
                      TextSpan(
                        text: 'What are you\n     Reading',
                      ),
                      TextSpan(
                          text: 'Today?',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReadingListCard(
                      image: 'assets/images/book-1.png',
                      title: 'Cursing & Influence',
                      auth: 'Gary Venchuk',
                      rating: 4.9,
                    ),
                    ReadingListCard(
                      image: 'assets/images/book-2.png',
                      title: 'Top Ten Business Hacks',
                      auth: 'Herman Joel',
                      rating: 4.8,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                      style: Theme.of(context).textTheme.headlineMedium,
                      children: const [
                        TextSpan(text: 'Best of the '),
                        TextSpan(
                            text: 'Day',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )),
                    BestOfTheDayCard(size: size),
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headlineMedium,
                            children: const [
                          TextSpan(text: 'Continue '),
                          TextSpan(
                              text: 'Reading...',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])),
                    const SizedBox(height: 20),
                    CountineuReadingWidgets(size: size),
                    const SizedBox(height: 40)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
