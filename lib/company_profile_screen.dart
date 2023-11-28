import 'package:flutter/material.dart';
import 'package:flutter_pageview_ps_abinaya/navbar.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Company Profile',
          style: TextStyle(color: Colors.black,fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: Image.asset('images/TidyLife_logo.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Tidy Life India Pvt Ltd',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height:10,
                  width: 370,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.teal.shade200,
                  child: ListTile(
                    leading: Icon(Icons.phone,color: Colors.black),
                    title: Text(
                      '+91 96003 77012',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Roboto",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.teal.shade200,
                 // margin: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.teal.shade200,
                  child: ListTile(
                    leading: Icon(Icons.web_asset_outlined,color: Colors.black,),
                    title: Text(
                      'http://www.tidylifeindia.com',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Roboto',
                          color: Colors.black,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.teal.shade200,
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    title: Text(
                      'No.A3, Mahalakshmi Flats, Sivagami Street,\nNew Perungalathur,\nChennai, Tamil Nadu, 600063.',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'roboto',
                          color: Colors.black,),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
