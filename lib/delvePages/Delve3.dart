import 'package:flutter/material.dart';

class delve3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc4c4c4),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GestureDetector(onTap:(){Navigator.pop(context);},
              child: Image(
                image: AssetImage('images/page2.jpg'),
                fit: BoxFit.cover,
                color: Colors.black54,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'With just a tap, get to your Fashion world',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        fontFamily: "poppins",
                        color: Color(0xFFFFFFFF)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.white54,
                              size: 15,
                            ),

                            Icon(
                              Icons.circle_outlined,
                              color: Colors.white54,
                              size: 15,
                            ),Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 60,
                            )
                          ]),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {Navigator.pop(context);},
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )
                    ],
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
