import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui6/view/screens/bottom_navigation.dart';
import 'package:ui6/view/screens/second_screen.dart';
import 'package:ui6/view/screens/third.dart';
import 'package:ui6/view/screens/third_screen.dart';
import 'package:ui6/view/widgets/category_card.dart';
import 'package:ui6/view/widgets/heading_text.dart';
import 'package:ui6/view/widgets/recommandetion.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int _curruntindex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.jpg"),
                      radius: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.notifications, size: 30),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "We hope you find what you \ncame for",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              HeadingText(
                heading: "Category",
              ),
              CategoryCard(),
              SizedBox(
                height: 10,
              ),
              HeadingText(
                heading: "Recomendation",
              ),
              RecomendationCard(
                horizontal: true,
              ),
              HeadingText(
                heading: "Popular Places",
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBottom(currentIndex: 0,)
        );
  }
}
