import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_page.dart';
import 'package:toku/Screens/phrases_page.dart';

import '../Components/category.dart';
import 'numbers_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text('Toku'),),
      body: Column(
        children: [
          Category(text: 'Numbers',
              color: Color(0xffEF9235),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder:( context){
                return NumbersPage();
              })
              );

              }),
          Category(text: 'FamilyMembers',
            color: Color(0xff558B37),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:( context){
                return FamilyMembersPage();
              })
              );
            },),
          Category(text: 'Colors',
             color: Color(0xff79359F),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:( context){
            return ColorsPage();
          })
          );},),
          Category(text: 'Phrases',
             color: Color(0xff50ADC7),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:( context){
              return PhrasesPage();
            })
            );
          },),
        ],
      ),
    );
  }
}
