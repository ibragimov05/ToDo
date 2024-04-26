import 'package:lesson3/main1/utils/string_extension.dart';
import 'package:flutter/material.dart';

class HomeWorkItem extends StatelessWidget {
  Color primaryColor;
  String title;
  String description;
  IconData icon;
  String date;
  String chapter;
  String mainTitle;
  bool colorType;

  HomeWorkItem({
    required this.primaryColor,
    required this.title,
    required this.description,
    required this.icon,
    required this.date,
    required this.chapter,
    required this.mainTitle,
    required this.colorType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainTitle.capitalize(),
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:Color.fromARGB(255, 48, 4, 153),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            color: colorType == true ? const Color.fromARGB(255, 48, 4, 153) : Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: colorType == true ? Colors.white : primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color:  colorType == true ? primaryColor : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.capitalize(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18,
                            color: colorType == true ? Colors.white : Colors.black),
                      ),
                      Text(
                        chapter.toUpperCase(),
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        description,
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: colorType == true ? Colors.white : primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: colorType == true ? primaryColor : Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 20,
                          ),
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.grey.shade500,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            date,
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
