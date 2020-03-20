import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo/event.dart';
import 'modules.dart';

class MyAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  const MyAppBar();


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
         margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: Text(
              'LeaderBoard',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20.0
              ),
            ),
          ),
SizedBox(width: 50),
          Container(
            child: IconButton(
              icon: Icon(
              Icons.calendar_today, color: Colors.black,),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home(),
                    ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}



