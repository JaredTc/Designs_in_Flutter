import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric( horizontal:  20 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mollit cillum ', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            SizedBox( height: 10 ,),
            Text('Sunt laborum in qui sint dolor dolor amet eu proident quis laboris.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white
              
            ),)
          ],
        ),
      ),
    );
  }
}