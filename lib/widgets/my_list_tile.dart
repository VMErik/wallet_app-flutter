import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {


  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;


  const MyListTile({super.key, required this.iconImagePath, required this.tileTitle, required this.tileSubtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icono
                        Row(
                          children: [
                             Container(
                          height: 80,
                          child: Image.asset(iconImagePath),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12)
                          ),
                        
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tileTitle, style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20
                            ),),
                            SizedBox(height: 12,),
                            Text(tileSubtitle, style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700]
                            ),),
                          ],
                        ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
    );
  }
}