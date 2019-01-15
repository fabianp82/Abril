import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }


}

class _FloatingActionButtonGreen  extends State<FloatingActionButtonGreen>{

  bool _isFavorite = false;

  void onPressedFav() {
    setState(() {
      _isFavorite = !this._isFavorite;
    });

    if(this._isFavorite) {
      Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("¡Soy tu pinche favorito!"))
      );
    }
    else
    {
          Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("¡Ya no!")));
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      tooltip: "Fav",
      mini: true,
      onPressed: onPressedFav,
      child: Icon(
          this._isFavorite ? Icons.favorite : Icons.favorite_border
      )
    );
  }

}