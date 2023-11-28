import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/app_data_text.dart';
import 'package:flutter_pageview_ps_abinaya/display_text.dart';
import 'package:flutter_pageview_ps_abinaya/navbar.dart';
import 'package:share_plus/share_plus.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({Key? key}) : super(key: key);

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  var selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Ratan Tata Quotes',
          style: TextStyle(
              color: Colors.black, fontSize: 25,),
        ),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Share")),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 350,width: 550,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataText.length,
              itemBuilder: (context, index) {
                var _quotes = appDataText[index];
                var _scale = selectedPage == index ? 1.0 : 0.8;
                return
                  TweenAnimationBuilder(
                  duration: Duration(microseconds: 300),
                  tween: Tween(begin: _scale, end: _scale),
                  child: DisplayText(appDataText: _quotes),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: child,
                    );
                  },
                );
              },
            ),
          ),
      ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    (selectedPage + 1).toString() + '/' +
                        appDataText.length.toString(),
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  _shareInfo() {
    print('-------> Share');

    print(appDataText[selectedPage].text);

    Share.share(appDataText[selectedPage].text);
  }
}
