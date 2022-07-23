import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.dashboard,
            text: 'General',
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.directions_bus_filled_outlined,
            text: 'Transport',
            color: Colors.deepPurpleAccent,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shopping_bag,
            text: 'Shopping',
            color: Colors.pinkAccent,
          ),
          _SingleCard(
            icon: Icons.inventory_2_outlined,
            text: 'Bills',
            color: Colors.orangeAccent,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_creation_outlined,
            text: 'Entertainment',
            color: Colors.indigoAccent,
          ),
          _SingleCard(
            icon: Icons.local_grocery_store_outlined,
            text: 'Grocery',
            color: Colors.green,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const _SingleCard(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 35,
                    
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: color),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
