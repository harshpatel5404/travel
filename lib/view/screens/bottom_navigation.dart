import 'package:flutter/material.dart';
import 'package:ui6/view/screens/third_screen.dart';

import 'home_screen.dart';

class NavigationBottom extends StatefulWidget {
  var currentIndex;
   NavigationBottom({ Key? key, this.currentIndex }) : super(key: key);

  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            switch (value) {
              case 0:
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                break;
              case 1:
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ThirdScreen()));
                break;
             
              default:
            }
            setState(() {
              widget.currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Explore'),
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text('Favorite'),
              icon: Icon(Icons.star_outline_rounded),
            ),
            BottomNavigationBarItem(
              title: Text('More'),
              icon: Icon(Icons.menu),
            ),
          ],
        );
  }
}