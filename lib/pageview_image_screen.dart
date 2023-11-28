import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pageview_ps_abinaya/app_data_text.dart';
import 'package:flutter_pageview_ps_abinaya/display_text.dart';
import 'package:flutter_pageview_ps_abinaya/navbar.dart';
import 'package:path_provider/path_provider.dart';
import 'app_data_image.dart';
import 'display_image.dart';
import 'indicator.dart';
import 'package:share_plus/share_plus.dart';

class PageViewImageScreenIndicator extends StatefulWidget {
  const PageViewImageScreenIndicator({super.key});

  @override
  State<PageViewImageScreenIndicator> createState() =>
      _PageViewImageScreenIndicatorState();
}

class _PageViewImageScreenIndicatorState
    extends State<PageViewImageScreenIndicator> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Ratan Tata Quotes',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                    print('--------> Selected Index: $_selectedIndex');
                  });
                },
                itemCount: appDataImage.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appData: appDataImage[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(appDataImage.length, (index) =>
                    Indicator(
                        isActive: _selectedIndex == index ? true : false)),
              ],
            ),
          ),
        ],
      ),
    );
  }
shareInfo()async{
  print('------------> _shareInfo');

  print(appDataImage[_selectedIndex].imagePath);

  ByteData imagebyte = await rootBundle.load(appDataImage[_selectedIndex].imagePath);
  final temp = await getTemporaryDirectory();
  final path = '${temp.path}/wb_1.png';
  File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
  await Share.shareFiles([path], text: 'Image Shared');
}
}












