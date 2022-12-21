import 'package:flutter/material.dart';
import 'package:tasarim_odevi_3/renkler.dart';

class MyChip extends StatelessWidget {
  String icerik;
  MyChip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik, style: TextStyle(color: anaRenk, fontSize: 25)),
      style: TextButton.styleFrom(
        backgroundColor: yaziRenk4,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
      ),
    );
  }
}
