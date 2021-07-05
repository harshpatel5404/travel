import 'package:flutter/material.dart';
import 'package:ui6/view/screens/second_screen.dart';
import 'package:ui6/view/widgets/rating_widget.dart';

class RecomendationCard extends StatefulWidget {
  bool horizontal;
  RecomendationCard({Key? key, required this.horizontal}) : super(key: key);

  @override
  _RecomendationCardState createState() => _RecomendationCardState();
}

class _RecomendationCardState extends State<RecomendationCard> {
  List imgs = ["img1", "img2", "img3", "img4", "img5"];
  List place = [
    "Sarthana Nature Park",
    "Manali",
    "Kedarnath",
    "Modi resort",
    "Jungle"
  ];
  List contry = ["India", "South Africa", "USA", "United Kindom", "UAE"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  widget.horizontal == true ? 270 : MediaQuery.of(context).size.height*0.80,
      width: widget.horizontal == true
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection:
            widget.horizontal == true ? Axis.horizontal : Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return RecomedationViewCard(
            img: imgs[index],
            location: contry[index],
            place: place[index],
            horizontal: widget.horizontal,
          );
        },
      ),
    );
  }
}

class RecomedationViewCard extends StatelessWidget {
  final bool horizontal;
  final img;
  final place;
  final location;
  RecomedationViewCard(
      {Key? key, this.img, this.place, this.location, required this.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal == true ? const EdgeInsets.fromLTRB(15, 5, 0, 5) :  const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: EdgeInsets.all(10),
                width: horizontal == true
                    ? MediaQuery.of(context).size.width * 0.70
                    : MediaQuery.of(context).size.width,
                height:  horizontal == true ? 180 : 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage("assets/images/$img.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 10,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: horizontal == true
                              ? MediaQuery.of(context).size.width * 0.55
                              : MediaQuery.of(context).size.width * 0.80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RoundContainer(
                                icon: Icons.star,
                                text: "4.8",
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.star_border_rounded,
                                    color: Colors.white, size: 35),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                place,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_sharp, color: Colors.grey),
                  Text(
                    location,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
