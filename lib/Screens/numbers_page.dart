import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

import '../Components/numItem.dart';
class NumbersPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final List<Item> numbers = const [
      Item(
        sound: 'sounds/numbers/number_one_sound.mp3',
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
      ),
      Item(
        sound: 'sounds/numbers/number_two_sound.mp3',
        jpName: 'Ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
      ),
      Item(
        sound: 'sounds/numbers/number_three_sound.mp3',
        jpName: 'San',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
      ),
      Item(
        sound: 'sounds/numbers/number_four_sound.mp3',
        jpName: 'Shi',
        enName: 'four',
        image: 'assets/images/numbers/number_four.png',
      ),
      Item(
        sound: 'sounds/numbers/number_five_sound.mp3',
        jpName: 'Go',
        enName: 'five',
        image: 'assets/images/numbers/number_five.png',
      ),
      Item(
        sound: 'sounds/numbers/number_six_sound.mp3',
        jpName: 'Roku',
        enName: 'six',
        image: 'assets/images/numbers/number_six.png',
      ),
      Item(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        jpName: 'Sebun',
        enName: 'seven',
        image: 'assets/images/numbers/number_seven.png',
      ),
      Item(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        jpName: 'hachi',
        enName: 'eight',
        image: 'assets/images/numbers/number_eight.png',
      ),
      Item(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        jpName: 'Kyū',
        enName: 'nine',
        image: 'assets/images/numbers/number_nine.png',
      ),
      Item(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        jpName: 'Jū',
        enName: 'ten',
        image: 'assets/images/numbers/number_ten.png',
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Numbers'),
      backgroundColor:  Color(0xFF46322B),),
      body:ListView.builder(
        itemCount: numbers.length,
          itemBuilder: (context,index){
            return ListItem(item: numbers[index],
            color:  Color(0xffEF9235),);
          }),
    );
  }
}
