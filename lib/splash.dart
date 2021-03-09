import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/order.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 10),
        () => Navigator.pushReplacement(context, PageTransition(
            child: Order(), type: PageTransitionType.leftToRightWithFade))

    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],

      body: SafeArea(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              SizedBox(
                height: 300.0,
                width: 400.0,
                child: Lottie.asset('animations/delivery.json'),
              ),
              SizedBox(

                height: 60.0,

              ),


              Container(
                width: 250.0,
                child: Text(
                  'Choose your favourite meals and get them to your doorstep.',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PlayBall',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,




                  ),
                ),
              ),
              //padding: EdgeInsets.only(top:10.0),


              SizedBox(

                height: 90.0,

              ),

              Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Order()));
                          print('button pressed');

                        });
                      },
                      child: Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20.0),
                        //   color: Colors.yellowAccent,
                        // ),

                        child: Center(child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                        color: Color(0xFFFED73B),

                        width: double.infinity,
                        height: 100.0,

                      ),
                    ),
                  ),
                ],
              ),


            ],),
        ),

      ),

    );
  }
}
