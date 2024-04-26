import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson3/main1/widgets/homework_item.dart';

class HomeWorkScreen extends StatefulWidget {

  const HomeWorkScreen({super.key});

  @override
  State<HomeWorkScreen> createState() => _HomeWorkScreenState();
}

class _HomeWorkScreenState extends State<HomeWorkScreen> {
  List<Map<String, dynamic>> days = [
    {
      'day': "Mon",
      'date': 22,
      'isSelected': false,
    },
    {
      'day': "Tue",
      'date': 23,
      'isSelected': false,
    },
    {
      'day': "Wed",
      'date': 24,
      'isSelected': true,
    },
    {
      'day': "Thu",
      'date': 25,
      'isSelected': false,
    },
    {
      'day': "Fri",
      'date': 26,
      'isSelected': false,
    },
    {
      'day': "Sun",
      'date': 27,
      'isSelected': false,
    },
  ];

  List<Map<String, dynamic>> homeTasks = [
    {
      'mainTitle': 'english homework',
      "title": "Basic english writing",
      "chapter": "chapter-12",
      "description":
          "It is recommended that you complete\nthis assign to improve your writing\nskills for beginner English",
      "time": "40 min",
      "icon": Icons.edit,
      'colorType':false,
    },
    {
      'mainTitle': 'German homework',
      "title": "Basic german listening",
      "chapter": "chapter-9",
      "description":
          "It is recommended that you complete\nthis assign to improve your listening\nskills for beginner German",
      "time": "40 min",
      "icon": Icons.headphones,
      'colorType':true,
    },
    {
      'mainTitle': 'spanish homework',
      "title": "Basic english listening",
      "chapter": "chapter-12",
      "description":
          "It is recommended that you complete\nthis assign to improve your speaking\nskills for beginner English",
      "time": "60 min",
      "icon": CupertinoIcons.speaker_2_fill,
      'colorType':false,
    },
  ];

  Color primaryColor = const Color.fromARGB(255, 48, 4, 153);

  Widget calendarDay(String day, int date, bool isSelected) {
    return Column(
      children: [
        Text(day),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 48, 4, 153)
                : Colors.white,
            border: Border.all(
              color: Colors.grey.shade400,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            '$date',
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back),
          style: IconButton.styleFrom(
            side: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
        title: const Text(
          'Homework',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis,
              ),
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var day in days)
                    calendarDay(day['day'], day['date'], day['isSelected']),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              for (var homework in homeTasks)
                HomeWorkItem(
                  title: homework['title'],
                  description: homework['description'],
                  icon: homework['icon'],
                  primaryColor: primaryColor,
                  date: homework['time'],
                  chapter: homework['chapter'],
                  mainTitle: homework['mainTitle'],
                  colorType: homework['colorType'],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
