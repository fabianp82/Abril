import 'package:abril_app/review.dart';
import 'package:flutter/material.dart';
import 'package:abril_app/button_purple.dart';


class DescripcionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescripcionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final start = Container (
      margin: EdgeInsets.only(
          top:363.0,

          right: 3.0
      ),
      child: Icon(
          Icons.star,
          color: Color(0xFFf2C611),
      ),
    );

    final start_half = Container (
      margin: EdgeInsets.only(
          top:363.0,

          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final start_border = Container (
      margin: EdgeInsets.only(
          top:363.0,

          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final title_start = Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top:360.0,
              left: 20.0,
              right: 20.0
            ),
            child: Text(
              namePlace,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: <Widget>[
              start,
              start,
              start,
              start_half,
              start_half
            ],
          )
        ],
    );

    final Descipcion=
          Container(
              margin: EdgeInsets.only(
                  top:20.0,
                  left: 20.0,
                  right: 20.0
              ),
              child: Text(
                            descriptionPlace,
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200
                            ),
                      textAlign: TextAlign.left,
                      ),


    );

    final Resultado = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title_start,
            Descipcion,
            ButtonPurple("Navigate")
          ],

    );

    return Resultado;
  }

}