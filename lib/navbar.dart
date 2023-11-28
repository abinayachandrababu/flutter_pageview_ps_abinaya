import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/pageview_image_screen.dart';
import 'package:flutter_pageview_ps_abinaya/my_profile_screen.dart';
import 'package:flutter_pageview_ps_abinaya/company_profile_screen.dart';
import 'package:flutter_pageview_ps_abinaya/pageview_text.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Ratan Tata',
              style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),
            ),
            accountEmail: Text(
              'Version 1.0',
              style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15
              ),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset('images/Ratan tata 5.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Background Images.jpg',
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Quotes Text'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          ListTile(
            title: Text('Quotes Image'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PageViewImageScreenIndicator()));
            },
          ),
          ListTile(
            title: Text('Personal Profile'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyProfileScreen()));
            },
          ),
          ListTile(
            title: Text('Company Profile'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => CompanyProfileScreen()));
            },
          ),
        ],
      ),
    );
  }
}
