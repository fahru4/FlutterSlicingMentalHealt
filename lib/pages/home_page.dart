import 'package:flutter/material.dart';
import 'package:flutter_fundamental/utility/emoticon_face.dart';
import 'package:flutter_fundamental/utility/excersise_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '11 Januari 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      //Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //How do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😔',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //well

                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😄',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //excelent

                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😁',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excelent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                    child: Column(
                  children: [
                    //Excersises Heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Excercises',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //ListView of Excersise
                    Expanded(
                      child: ListView(
                        children: [
                          ExcersiseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking skills',
                            numberOfExercise: 16,
                            color: Colors.orange,
                          ),
                          ExcersiseTile(
                             icon: Icons.person,
                            exerciseName: 'Reading skills',
                            numberOfExercise: 8,
                            color: Colors.green
                          ),
                          ExcersiseTile(
                             icon: Icons.star,
                            exerciseName: 'Writing skills',
                            numberOfExercise: 20,
                            color: Colors.pink
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
