import 'package:flutter/material.dart';

class ExcersiseTile extends StatelessWidget {
  // const ExcersiseTile({super.key});

  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;

  ExcersiseTile({
    this.icon,
    this.exerciseName,
    this.numberOfExercise,
    this.color
    });



  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(children: [
                                 ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                   child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: color,
                                    child: Icon(
                                      icon,
                                      color: Colors.white,
                                      ),
                                    ),
                                 ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //title
                                  Text(
                                    exerciseName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  //subtitle
                                  Text(
                                    numberOfExercise.toString() + ' Excersises',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                           ],),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ),
    );
  }
}