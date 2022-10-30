// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prac2/utils/emoticon_face.dart';
import 'package:prac2/utils/exercise_tile.dart';
import 'package:prac2/utils/hex_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          ],
        ),
        backgroundColor: Colors.blue[800],
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greeting row
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //hi dhruv
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              'Hi, Dhruv!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('23 Jan 2022',
                                style: TextStyle(
                                  color: Colors.blue[200],
                                ))
                          ],
                        ),

                        //notification bell
                        Material(
                          color: Colors.transparent,
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ]),

                  SizedBox(
                    height: 25,
                  ),

                  //search bar
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Search',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400))
                    ]),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //4 faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //badly
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😫'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🙂'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😄'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🥳'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            color: HexColor('#303b50'),
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: HexColor('#303b50'),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //listview of exercises
                    Expanded(
                      child: ListView(
                        
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite, 
                          title: 'Exercices', 
                          subTitle: '16 exercises', 
                          bgColor: HexColor('#f58557'),),

                          ExerciseTile(
                            icon: Icons.person, 
                            title: 'Reading speed', 
                            subTitle: '8 exercises', 
                            bgColor: HexColor('#2a7fbe'),),

                            ExerciseTile(
                            icon: Icons.person, 
                            title: 'Writing speed', 
                            subTitle: '12 exercises', 
                            bgColor: HexColor('#fb597d'),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
