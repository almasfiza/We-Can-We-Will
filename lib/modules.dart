import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'event.dart';
import 'leaderboard.dart';
import 'userinfo.dart';

class Modules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => home(),
    },
      home: Scaffold(
        appBar: _getCustomApp_Bar(context),
        bottomNavigationBar: _getNavBar(context),

        body: SingleChildScrollView(child:Container(
          color: Colors.white,
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//
//                begin:Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                stops: [0.1,0.4,0.7,0.9],
//                colors: [
//                  Color(0xFF3594DD),
//                  Color(0xFF4563DB),
//                  Color(0xFF5036D5),
//                  Color(0xFF5B16D0),
//                ]
//            ),
//          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30,40,30,90),
            child : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.teal[100],
                  child:Text('Mathematics',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),

                ),

                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.teal[200],
                  child:Text('1.Sets \n2.Probability\n3.Statistics'),

                ),
                Divider(
                  height:60.0,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.pink[100],
                  child:Text('Science',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),

                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.pink[200],
                  child:Text('1.Light\n2.Matter\n3.Nervous System'),),
                SizedBox(height:10.0),
                Divider(
                  height:60.0,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.yellow[100],
                  child:Text('History',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),

                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.yellow[200],
                  child:Text('1.Revolution of 1857\n2.Swadeshi Movement\n3.Independence'),

                ),
                SizedBox(height:10.0),
                Divider(
                  height:60.0,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.orange[100],
                  child:Text('Personal Finance',
                    style: TextStyle(
                        fontSize: 20.0
                    ),),

                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.orange[200],
                  child:Text('1.Banking Systems \n2.Savings \n3.Taxes Introduction'),

                ),
              ],
            ),




          ),
        ),
        ),


      ),
    );
  }
}



//_getCustomAppBar(context){
//  return PreferredSize(
//    preferredSize: Size.fromHeight(50),
//    child: Container(
//      alignment: Alignment.bottomCenter,
//      decoration: BoxDecoration(
//        gradient: LinearGradient(
//          begin: Alignment.centerLeft,
//          end: Alignment.centerRight,
//          colors: [
//            Colors.blueAccent,
//            Colors.tealAccent,
//          ],
//        ),
//      ),
//      child: Row(
//
//        children: <Widget>[
//          IconButton(icon: Icon(Icons.arrow_back,color: Color(0xFF5B16D0)), onPressed: (){
//
//          Navigator.push(
//              context,
//             MaterialPageRoute(builder: (context) => home()),
//        );
//          }),
//          SizedBox(width: 120.0),
//          Text('Modules', style: TextStyle(color:Color(0xFF5B16D0), fontSize: 18, fontWeight: FontWeight.w500), ),
//
//        ],),
//    ),
//  );
//}
_getCustomApp_Bar(context){
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ],
        ),
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: IconButton(icon: Icon(Icons.menu), onPressed: (){})),
          SizedBox(width: 120),
          Text('Modules', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
         SizedBox(width: 115  ),
         IconButton(icon: Icon(Icons.calendar_today), onPressed: (){

           Navigator.push(
               context,
           MaterialPageRoute(
             builder: (context) => home(),
           )
           );
        }
        ),
        ],
      ),
    ),
  );
}



_getNavBar(context) {
  return Container(
      height: 105,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: NavBarClipper(),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF3594DD),
                          Color(0xFF4563DB),
                          Color(0xFF5036D5),
                          Color(0xFF5B16D0),
                        ])),
              ),
            ),
          ),
          Positioned(
            bottom: 45,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info()),
                        );
                      },
                      icon: Icon(Icons.face),
                      color:  Colors.blue,

                    ),
                  ),
                ),
                SizedBox(width: 1),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.book),
                      color:  Colors.blue,

                    ),
                  ),
                ),
                SizedBox(width: 1),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => leaderboard()),
                        );
                      },
                      icon: Icon(Icons.stars),
                      //iconSize: ,
                      color:  Colors.blue,

                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                  child: Text('User',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w500)),
                ),


                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Text('Modules',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(child:
                Text('LeaderBoard',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          )
        ],
      )
  );
}


class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
