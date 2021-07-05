import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui6/view/screens/bottom_navigation.dart';
import 'package:ui6/view/widgets/recommandetion.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * .75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // color: Colors.blue
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: "Oslo",
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.red)),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.settings),
                    Text("Filters"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Sort by:"),
                        Text(
                          "Price",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.grid_view,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.view_agenda_outlined,
                        )
                      ],
                    )
                  ],
                ),
                //
            RecomendationCard(horizontal: false)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:NavigationBottom(currentIndex: 1,)

    );
  }
}
