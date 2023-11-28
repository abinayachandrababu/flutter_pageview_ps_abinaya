import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/app_data_image.dart';

class DisplayImage extends StatelessWidget{
  final AppDataImage appData;

  const DisplayImage({super.key, required this.appData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 0.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(appData.imagePath),
            fit: BoxFit.cover),
      ),
    );
  }
}
