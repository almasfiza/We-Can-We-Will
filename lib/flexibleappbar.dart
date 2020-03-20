import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo/appbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class MyFlexiableAppBar extends StatelessWidget {

  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
      child: CustomPaint(
        painter: myPainter(),
      child: new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
        height: statusBarHeight + appBarHeight,
        child: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Container(

                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(MdiIcons.trophy, color: Colors.amber,),
                            iconSize: 100,
                          ),
                        ),
                   padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      ),
                    ],),),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,left:8.0),
                        child: new Text(
                            "Rankings",
                            style: const TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Poppins',
                                fontSize: 18.0
                            )
                        ),
                      ),),

                      Container(child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,right:8.0),
                        child: Container(
                            child: Row(children: <Widget>[
                              Container(child: Icon(
                                FontAwesomeIcons.calendarAlt, color: Colors.white,
                              ),),
                              SizedBox(width: 10,),
                              Container(child: Text(
                                'March 2020', style: const TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0
                              ),),),
                            ],)

                        ),
                      ),),


                    ],),
                ),
              ],)
        ),
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3594DD),
              Color(0xFF4563DB),
              Color(0xFF5036D5),
              Color(0xFF5B16D0),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
      ),
    );
  }
}

class myPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
   canvas.drawLine(Offset.zero, Offset(20,20), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}