import 'package:flutter/material.dart';
import 'package:tasarim_odevi_3/renkler.dart';

class Infos extends StatelessWidget {
  String yazi1;
  String yazi2;
  String yazi3;


  Infos({required this.yazi1,required this.yazi2,required this.yazi3});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Text(yazi1 , style: TextStyle(fontSize: 22, color: yaziRenk5,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(top:16, bottom:16),
            child: Text(yazi2, style: TextStyle(fontSize: 22, color: yaziRenk5,fontWeight: FontWeight.bold ),),
          ),
          Text(yazi3, style: TextStyle(fontSize: 14, color: yaziRenk5),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
