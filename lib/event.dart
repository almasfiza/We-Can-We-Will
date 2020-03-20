import 'package:flutter/material.dart';
import 'package:ngo/leaderboard.dart';
import 'package:ngo/modules.dart';
import 'package:ngo/userinfo.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: _getCustomAppBar(context),
      body: Container(
        child: Column(

          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(       //1stbox
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ],
                  begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
                child: Text(
                'Sunday 1 \n Things Happening Around\n Location: Address 1',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(95, 25, 10, 0),
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(       //2ndbox
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(

                margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
                child: Text(
                  'Sunday 2 \n Things Happening Around\n Location: Address 2',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
              height: 120,
              decoration: BoxDecoration(
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
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
                child: Text(
                  'Sunday 3 \n Things Happening Around\n Location: Address 3',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(95, 25, 10, 0),
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 25, 75, 0),
                child: Text(
                  'Sunday 4 \n Things Happening Around\n Location: Address 4',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

        ],
        ),
      ),
      bottomNavigationBar: _getNavBar(context),
    );
  }
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Modules()),
                    );
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

_getCustomAppBar(context){
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
          Container(child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Modules()));
          })),
          SizedBox(width: 120),
          Text('Events', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),

        ],),
    ),
  );
}