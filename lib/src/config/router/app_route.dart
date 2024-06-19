import 'package:flutter/material.dart';

extension AppRoute on BuildContext{

  void pushRep(Widget route){
    Navigator.pushReplacement(this, MaterialPageRoute(builder: (_)=>route) );
  }

  void pushJust(Widget route){
    Navigator.push(this, MaterialPageRoute(builder: (_)=>route));
  }


  void pushPop(){
    Navigator.pop(this);
  }
}