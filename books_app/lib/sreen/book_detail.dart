import 'package:flutter/material.dart';
import 'package:book_app/model/model.dart';

 class BookDetailScreen extends StatelessWidget {
    final Book book;

    BookDetailScreen({required this.book});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: column(
            children: [
                padding(
                    padding: EdgeInsets.only(left: 25,right: 25, top:50, bottom:25),
                    child: Row(
                        children: [
                            GestureDetector(// כפתור חזרה אחורה
                                onTap: () => Navigator.pop(context),//סינטאקס קבוע ללחזור אחורה
                                child: Container(
                                    width: 55,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: colors.white,
                                        borderRadius: borderRadius.Circular(15),
                                    )
                                    child: Icon(Icons.keyboard_arrow_left, size: 25,
                                     color: colors.black,),//icon
                                )//Container
                            )//GestureDetector
                        ]
                    )//row
                ),//padding
                Center(
                    child: sizeBox(
                        height:300,
                        child Hero(
                            tag: book.imageURL,
                            child: ClipRRect(
                                borderRadius: borderRadius.Circular(20),
                                child: Image.asset(book.imageURL, fit: BoxFit.cover),
                                
                            ),
                        ),
                ),//Collumn
                ),//Center
                SizeBox(height:30),
                Extend(
                    child: Container(
                        decoration: BoxDecoration(
                            color: colors.grey[300],
                            borderRadius: BorderRadius.only(
                                topLeft: borderRadius.circular(50),
                                topRight: borderRadius.circular(50),
                            ),//BorderRadius
                        ),//BoxDecoration
                        
                    ),//Container
                ),//extend
            ],

        ),//column
        );//Scaffold
    }
 }
