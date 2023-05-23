import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

class styleDelveSplash extends StatefulWidget {
  @override
  State<styleDelveSplash> createState() => _styleDelveSplashState();
}

class _styleDelveSplashState extends State<styleDelveSplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Color(0xff292D32),
      seconds: 3,
      navigateAfterSeconds: unoPage(),
      title: Text('StyleDelve',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 40,
              fontFamily: "poppins",
              color: Color(0xFFFFFFFF))),
      image: Image.asset(
        'images/cart.png',
      ),
      styleTextUnderTheLoader: TextStyle(fontSize: 18),
      photoSize: 100,
    );
  }
}

class unoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc4c4c4),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GestureDetector(onTap:(){Navigator.pushNamed(context,'/2');},
              child: Image(
                image: AssetImage('images/1.png'),
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
                    'Delve in your True style....',
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
                              Icons.circle,
                              color: Colors.white,
                              size: 15,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.white54,
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/2');
                        },
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