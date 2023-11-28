import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/pageview_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('-------->initstate');

    Timer(Duration(seconds: 5), () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => PageViewText())),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset('images/Ratan tata 5.jpg',
                    height: 140,
                    width: 110,
                    fit: BoxFit.cover,),
                ),

                Padding(padding: EdgeInsets.only(top: 5,bottom: 25),
                  child: Text(
                    'Don\'t be serious, enjoy life as it comes.',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold
                    ),),)
              ],
            ),
          ),

        ),
      );
  }
}
