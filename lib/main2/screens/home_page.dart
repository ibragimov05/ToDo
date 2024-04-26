import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson3/main1/utils/string_extension.dart';

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            style: IconButton.styleFrom(
              side: BorderSide(
                color: Colors.grey.shade300,
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
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.grey.shade400),
                      color: Colors.white,
                    ),
                  ),

                ],
              )

            ],
          )
        ],
      ),
    );
  }
}
