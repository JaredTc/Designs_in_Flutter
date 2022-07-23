import 'package:flutter/material.dart';
final color2 = Color(0xff30BAD6);
class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5,0.5],
              colors: [
              Color(0xff7AECCB),
              color2
            ]) 
          ),
          child: PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
          Page1(),
          Page2(),
      ],
    ),
        )
        );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            '25°',
            style: textStyle,
          ),
          Text(
            'Friday',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: color2,
      child: Center(
        child: TextButton(onPressed: () {}, 
        child: Padding(
          padding:  EdgeInsets.symmetric( horizontal: 40),
          child: Text('Welcome',
           style: TextStyle(
            color: Colors.white,
            fontSize: 30),),
        ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),),
      ),
    );
  }
}
