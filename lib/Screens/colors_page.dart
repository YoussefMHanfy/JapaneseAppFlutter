import 'package:flutter/material.dart';

import '../Components/numItem.dart';
import '../models/item.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> colors = const [
      Item(
        sound: 'sounds/colors/black.wav',
        jpName: 'Burakku',
        enName: 'black',
        image: 'assets/images/colors/color_black.png',
      ),
      Item(
        sound: 'sounds/colors/brown.wav',
        jpName: 'Chairo',
        enName: 'brown',
        image: 'assets/images/colors/color_brown.png',
      ),
      Item(
        sound: 'sounds/colors/dusty yellow.wav',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
      ),
      Item(
        sound: 'sounds/colors/gray.wav',
        jpName: 'Gurē',
        enName: 'gray',
        image: 'assets/images/colors/color_gray.png',
      ),
      Item(
        sound: 'sounds/colors/green.wav',
        jpName: 'Midori',
        enName: 'green',
        image: 'assets/images/colors/color_green.png',
      ),
      Item(
        sound: 'sounds/colors/red.wav',
        jpName: 'Aka',
        enName: 'red',
        image: 'assets/images/colors/color_red.png',
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Colors'),
          backgroundColor:  Color(0xFF46322B),),
        body:ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context,index){
              return ListItem(item: colors[index],
                color:  Color(0xff79359F),);
            }),
      ),
    );

  }
}
