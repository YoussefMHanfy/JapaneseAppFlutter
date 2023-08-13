import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key ,required this.item, required this.color}) : super(key: key);
final Item item;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color:color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpName,style: TextStyle(color: Colors.white,
                    fontSize: 18
                ),),
                Text(item.enName,style: TextStyle(color: Colors.white,
                    fontSize: 18
                ),),

              ],),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton( onPressed: () async {
              final player = AudioPlayer();
             await player.play(AssetSource(item.sound));

            },
              icon:Icon (
                Icons.play_arrow,
                color: Colors.white, size: 32,),
            ),
          )
        ],
      ),
    );
  }
}
class PhraseItem extends StatelessWidget {

  const PhraseItem(
      {Key? key, required this.color, required this.phrase}) : super(key: key);

  final Item phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: ()  async {
              final player = AudioPlayer();
              await player.play(AssetSource(phrase.sound));

            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),

    );
  }
}