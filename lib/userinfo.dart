
import 'package:flutter/material.dart';
import 'package:ngo/modules.dart';
import 'main.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(context),

      body: SingleChildScrollView(child:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(

              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1,0.4,0.7,0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30,40,30,90),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[

              Center(
                child: CircleAvatar(
                  backgroundImage:
                  NetworkImage("http://wecanwewill.in/images/team/pankaj-thakkar.jpeg"),

                  radius: 80.0,

                ),



              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Pankaj Thakkar',
                  style:TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              Divider(
                height:60.0,
                color: Color(0xFFD4E26B),
              ),

              SizedBox(height:20.0),
              Text(
                'Y E A R  O F  J O I N',
                style:TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,

                ),

              ),

              SizedBox(height:10.0),
              Text(

                '2016',
                style:TextStyle(
                  color: Color(0xFF61F2DE),
                  letterSpacing: 2.0,
                  fontSize:20.0,
                  fontWeight: FontWeight.bold,

                ),



              ),
              SizedBox(height:20.0),
              Text(
                'C O I N S',
                style:TextStyle(
                  color:Colors.white,
                  letterSpacing:2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.brightness_7,
                    color: Color(0xFF61F2DE),

                  ),
                  SizedBox(width:10.0),

                  Text(
                    '407 Coins',
                    style: TextStyle(
                      color: Color(0xFF61F2DE),
                      fontSize:18.0,
                      letterSpacing:1.0,
                    ),
                  ),

                ],
              ),

              Divider(
                height:60.0,
                color: Color(0xFFD4E26B),
              ),
              Text(
                'C O N T A C T   I N F O',
                style:TextStyle(
                  color:Colors.white,
                  letterSpacing:2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),


              SizedBox(height:20.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Color(0xFF61F2DE),
                  ),
                  SizedBox(width:10.0),
                  Text(
                    'pankajthakkar@hotmail.com',
                    style: TextStyle(
                      color: Color(0xFF61F2DE),
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height:20.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone,
                    color: Color(0xFF61F2DE),

                  ),
                  SizedBox(width:10.0),
                  Text(
                    '+91 90043 55972',
                    style: TextStyle(
                      color: Color(0xFF61F2DE),
                      fontSize:18.0,
                      letterSpacing:1.0,
                    ),
                  ),

                ],
              ),
              SizedBox(height:30.0),

              Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),

                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xFF61F2DE)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),

                    child: Container(
                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,

                      child: Text(
                        "Adhar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),

                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      ),
    );

  }
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
            Colors.blueAccent,
            Colors.tealAccent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back, color:Color(0xFF5B16D0)), onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => Modules(),
            ),
            );
          }),
          Text('Personal Info', style: TextStyle( color:  Color(0xFF5B16D0), fontSize: 18, fontWeight: FontWeight.bold),),
          IconButton(icon: Icon(Icons.edit, color:  Color(0xFF5B16D0)), onPressed: (){}),
        ],),
    ),
  );
}
