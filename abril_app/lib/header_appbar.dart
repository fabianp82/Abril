import 'package:flutter/material.dart';
import 'package:abril_app/card_image_list.dart';
import 'package:abril_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack("Bienvenidos"),
        CardImageList()
      ],
    );
  }


}