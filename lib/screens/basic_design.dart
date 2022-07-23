import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          ),
          Title(),
          ButtomSection(),
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 20),
            child: Text('Mollit exercitation nostrud minim culpa laborum nisi dolor est velit voluptate ad velit. Pariatur esse dolor laboris proident anim ullamco ea occaecat. Aliquip duis esse ullamco reprehenderit voluptate duis est. Commodo culpa velit cillum fugiat occaecat in. Ullamco duis excepteur pariatur amet id. Aliquip ad et est culpa do. Non aute voluptate consectetur ullamco laboris incididunt.'))

        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButtom( icon: Icons.call, text: 'CALL', ),
        CustomButtom( icon: Icons.near_me, text: 'ROUTE', ),
        CustomButtom( icon: Icons.share, text: 'SHARE', ),
      ],
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButtom({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(
         this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}
