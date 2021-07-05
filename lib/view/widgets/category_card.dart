import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  List cardcolor = [Colors.red,Colors.blueGrey,Colors.black,Colors.pink[300],Colors.teal[200]];
  List text = ["All","Hiking Tics","City Tour","Picture","Dummas"];
  List icons =[Icons.folder,Icons.car_rental,Icons.badge,Icons.nature,Icons.house_rounded];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
      
          return ListCardView(text: text[index], bgcolor: cardcolor[index], bgicon: icons[index],);
        },
      ),
    );
  }
}

class ListCardView extends StatelessWidget {
  Color bgcolor;
   IconData bgicon;
   var text;
   
   ListCardView({Key? key, this.text,  required this.bgcolor,required this.bgicon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      print(bgcolor);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: MediaQuery.of(context).size.width*0.30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bgcolor,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(bgicon,color: Colors.white,size: 20,),
                  SizedBox(height: 10,),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
