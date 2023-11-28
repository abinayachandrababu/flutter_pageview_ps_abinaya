import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/navbar.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Personal Profile',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'images/white_flowers.jpg',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Abinaya Chandrababu.C',
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 300,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.teal.shade200,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+91 96003 77012',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.teal.shade200,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'abinayachandrababu@gmail.com',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
