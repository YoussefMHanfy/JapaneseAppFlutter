import 'package:flutter/material.dart';

import '../Components/numItem.dart';
import '../models/item.dart';
class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> familyMembers = const [
      Item(
        sound: 'sounds/family_members/father.wav',
        jpName: 'Chichioya',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png',
      ),
      Item(
        sound: 'sounds/family_members/daughter.wav',
        jpName: 'Musume',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png',
      ),
      Item(
        sound: 'sounds/family_members/grand father.wav',
        jpName: 'Ojīsan',
        enName: 'Grand Father',
        image: 'assets/images/family_members/family_grandfather.png',
      ),
      Item(
        sound: 'sounds/family_members/mother.wav',
        jpName: 'Hahaoya',
        enName: 'mother',
        image: 'assets/images/family_members/family_mother.png',
      ),
      Item(
        sound: 'sounds/family_members/grand mother.wav',
        jpName: 'Sobo',
        enName: 'grand mother',
        image: 'assets/images/family_members/family_grandmother.png',
      ),
      Item(
        sound: 'sounds/family_members/older bother.wav',
        jpName: 'Nīsan',
        enName: 'older brother',
        image: 'assets/images/family_members/family_older_brother.png',
      ),
      Item(
        sound: 'sounds/family_members/older sister.wav',
        jpName: 'Ane',
        enName: 'older sister',
        image: 'assets/images/family_members/family_older_sister.png',
      ),
      Item(
        sound: 'sounds/family_members/son.wav',
        jpName: 'Musuko',
        enName: 'son',
        image: 'assets/images/family_members/family_son.png',
      ),
      Item(
        sound: 'sounds/family_members/younger brohter.wav',
        jpName: 'otōto',
        enName: 'younger brother',
        image: 'assets/images/family_members/family_younger_brother.png',
      ),
      Item(
        sound: 'sounds/family_members/younger sister.wav',
        jpName: 'Imōto',
        enName: 'younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Family Mambers'),
          backgroundColor:  Color(0xFF46322B),),
        body:ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context,index){
              return ListItem(item: familyMembers[index],
                color:  Color(0xff558B37),);
            }),
      ),
    );
  }
}
