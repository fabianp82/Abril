import 'package:abril_app/description_place.dart';
import 'package:abril_app/header_appbar.dart';
import 'package:abril_app/review_list.dart';
import 'package:flutter/material.dart';



class HomeTrips extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescripcionPlace("Fabian Papp",5,"Try running your application with flutter run. You'll see the application has a blue toolbar. Then, without quitting the app, try.  Try running your application with flutter run. You'll see the application has a blue toolbar. Then, without quitting the app, try Try running your application with flutter run. You'll see the application has a blue toolbar. Then, without quitting the app, try Try running your application with flutter run. You'll see the application has a blue toolbar. Then, without quitting the app, try"),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

  
}