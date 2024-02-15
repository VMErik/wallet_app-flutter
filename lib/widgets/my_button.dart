import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final iconImagePath;
  final buttonText;


  const MyButton({super.key, this.iconImagePath, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Container(
                      height: 90,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                            color : Colors.grey.shade400,
                            blurRadius: 40,
                            spreadRadius: 10
                          )
                        ]
                      ),
                      child: Center(
                        child: Image.asset(iconImagePath),
                      ),
                    ),SizedBox(height:4),
                    Text(buttonText , style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[700]
                    ),)
                  ],
                ) ;
  }
}