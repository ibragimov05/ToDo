import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson3/main1/utils/string_extension.dart';
import 'package:lesson3/main2/widgets/cont_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 70,
        title: Text(
          'Course details'.capitalize(),
          style: const TextStyle(
              color: Color.fromARGB(255, 48, 4, 153),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back),
          style: IconButton.styleFrom(
            side: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 550,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/unnamed.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'English for Beginner',
              style: TextStyle(
                  color: Color.fromARGB(255, 48, 4, 153),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContainerWidget(number: '24', type: 'Chapter'),
              ContainerWidget(number: '12', type: 'Exam'),
              ContainerWidget(number: '05', type: 'Rewards'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 40),
            child: Text(
              'About course',
              style: TextStyle(
                  color: Color.fromARGB(255, 48, 4, 153),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
                'English courses help students develop their English language skills, including speaking, listening, reading, and writing. They can also help students improve their grammar, vocabulary, pronunciation, and sentence structure.'),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 48, 4, 153),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
