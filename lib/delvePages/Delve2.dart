import 'package:flutter/material.dart';

class delve2 extends StatelessWidget {
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
                image: AssetImage('images/3.jpg'),
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
                    'Amazing fashion styles in stock for you',
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
                              Icons.circle,
                              color: Colors.white,
                              size: 15,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.white54,
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
                        onPressed: () {Navigator.pushNamed(context,'/third');},
                        child: Text(
                          'Next',
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
