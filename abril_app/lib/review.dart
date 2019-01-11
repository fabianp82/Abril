import 'package:flutter/material.dart';


class Review extends StatelessWidget{

  String pathImage="assets/images/Perfil.jpg";
  String name ="Tito";
  String detalle ="1 reviews 5 photos";
  String comments ="A wonderfull place";

  Review(this.pathImage, this.name,this.detalle,this.comments);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final userComments= Container(
      margin: EdgeInsets.only(
          left:20.0
      ),

      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo= Container(
      margin: EdgeInsets.only(
          left:20.0
      ),

      child: Text(
        detalle,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName= Container(
      margin: EdgeInsets.only(
          left:20.0
      ),

      child: Text(
        name + " Gayyyy ",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
        ),
      ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInfo,
          userComments
        ],
    );

    final photo= Container(
        margin: EdgeInsets.only(
          top:20.0,
          left:20.0
        ),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage))
        ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}