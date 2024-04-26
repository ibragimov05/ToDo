import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  String number;
  String type;

  ContainerWidget({
    super.key,
    required this.number,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            number,
            style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 35),
          ),
          Text(
            type,
            style: const TextStyle(
                color: Color.fromARGB(255, 48, 4, 153),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
