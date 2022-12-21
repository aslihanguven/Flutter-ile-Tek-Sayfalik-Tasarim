import 'package:flutter/material.dart';
import 'package:tasarim_odevi_3/renkler.dart';
import 'infos.dart';
import 'my_chip.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFA3F569),
      appBar: AppBar(
        title: const Text("PET  HOUSE", style: TextStyle(fontFamily: "Anton", fontSize: 42, color: Color(0xFF225935)),),
        backgroundColor: yaziRenk4 ,
        centerTitle: true,
      ),
      body :
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Text("Pomerian Boo", style: TextStyle(fontFamily: "Rubik",fontSize: ekranGenisligi/12,color: yaziRenk4,fontWeight: FontWeight.bold),),
           const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage("resimler/boo_picture.png"),
                radius: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyChip(icerik: "HABITS"),
              MyChip(icerik: "NUTRITION"),
            ],
          ),
          Infos(yazi1: "Gender : Male", yazi2: "Age : 2 Year", yazi3: "It is a cheerful, sympathetic, energetic and full of life in every way. It is unique; It is one of the ideal breeds that can be fed in apartments, although it is selective in food. It is quite active in the house. It may need to be torn in a cool place in hot weather. A small garden to play in will meet the Pomeranian's exercise needs. Can walk long distances without getting tired."),
          Padding(
            padding: EdgeInsets.only(left: ekranGenisligi/41, right: ekranGenisligi/41),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: ekranGenisligi/2, height: ekranYuksekligi/14,
                  child: TextButton(
                    onPressed: (){},
                    child: Text("ADD TO FAVORİTES", style: TextStyle(color: yaziRenk4,fontSize: 17),),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(130))),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add_a_photo),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
