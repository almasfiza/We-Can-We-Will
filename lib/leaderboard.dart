import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'event.dart';
import 'appbar.dart';
import 'flexibleappbar.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';


class leaderboard extends StatefulWidget {
  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: MyAppBar(),
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexiableAppBar(),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  myCardDetails(
                      "1","assets/images/icon.png", "Krupa Thakkar", "470"),
                  myCardDetails(
                      "2","assets/images/icon.png", "Pankaj Thakkar",  "402"),
                  myCardDetails(
                      "3","assets/images/icon.png", "Harsh Mehta    ",  "482"),
                  myCardDetails(
                      "4","assets/images/icon.png", "Ankit Majithia ", "390"),
                  myCardDetails(
                      "5","assets/images/icon.png", "Dhruti Mawani  ", "350"),
                  myCardDetails(
                      "6","assets/images/icon.png", "Grishma Mehta  ", "325"),
                  myCardDetails(
                      "7","assets/images/icon.png", "Heena Mehta    ", "295"),
                  myCardDetails(
                      "8","assets/images/icon.png", "Jay Jagada        ", "280"),
                  myCardDetails(
                      "9","assets/images/icon.png", "Jayshree Domala", "270"),

                ],
              ),
            ),
          ],
        ),

    );
  }

}

Widget myCardDetails(String ranking, String imageVal, String personName,
    String points,
    ) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.indigo,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: myCurrencies(
            ranking,
            imageVal,
            personName,
            points
            ),
      ),
    ),
  );
}

Center myCurrencies(String ranking, String imageVal, String personName,
    String points) {
  return Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              myLeadingDetails(ranking,imageVal, personName),
              myCurrenciesDetails(
                  points),
            ],)
        ],)
  );
}


Widget myLeadingDetails(String ranking, String imageVal, String personName) {
  return Container(
      child: Row(children: <Widget>[
        Container(
          child: Text(
            ranking, style: TextStyle(
              color: Colors.indigo[600],
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),),
        ),
        SizedBox(width: 10),
        Container(child: Image(
          alignment: Alignment.centerLeft,
          height:50.0,
          image:AssetImage(imageVal),
        ),),
        SizedBox(width: 30.0),
        Container(child: Text(
          personName, style: TextStyle(
            color: Colors.indigo[600],
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 22.0
        ),),
        ),
        SizedBox(width: 10,),
      ],)
  );
}


Widget myCurrenciesDetails(String points) {
  return Container(child: Row(
    children: <Widget>[
        Container(child: Text(
            points,
            style: TextStyle(
                color: Colors.indigo[700],
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 20.0
            )
        ),
        ),
          Icon(
            Icons.stars,
            color: Colors.amber,
          )
        ],
      ),
  );
}

//_getCustomAppBar(){
//  return PreferredSize(
//    preferredSize: Size.fromHeight(50),
//    child: Container(
//      alignment: Alignment.bottomCenter,
//      decoration: BoxDecoration(
//        gradient: LinearGradient(
//          begin: Alignment.centerLeft,
//          end: Alignment.centerRight,
//          colors: [
//            Color(0xFF3594DD),
//            Color(0xFF4563DB),
//            Color(0xFF5036D5),
//            Color(0xFF5B16D0),
//          ],
//        ),
//      ),
//      child: Row(
//        //  mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Container(child: IconButton(icon: Icon(Icons.menu), onPressed: (){})),
//          SizedBox(width: 120),
//          Text('Leaderboard', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
//
//        ],),
//    ),
//  );
//}