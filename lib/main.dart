import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyHome());

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget imageCarousel = Container(
    height: 225.0,
    child: Carousel(
      overlayShadow: false,
      borderRadius: true,
      boxFit: BoxFit.cover,
      autoplay: true,
      dotSize: 5.0,
      indicatorBgPadding: 9.0,
      images: [
        AssetImage('assets/providers/airtel.png'),
        AssetImage('assets/providers/dialogtv.png'),
        AssetImage('assets/providers/dishtv.png'),
        AssetImage('assets/providers/peotv.png'),
        AssetImage('assets/providers/sundirect.png'),
        AssetImage('assets/providers/tatasky.png'),
        AssetImage('assets/providers/videocon.png'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1500),
    ),
  );
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Satellite TV'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            imageCarousel,
          ],
        ),
      ),
    );
  }
}
