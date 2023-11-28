import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/app_data_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;

  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
    Center(
    child: Container(
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
   children:[
 Padding(padding: EdgeInsets.all(8.0),
          child: Text(
            appDataText.text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontSize: 25,),
          ),
        ),]
        ),
        ),
        ),
    ),
    ]
    );
  }
}
