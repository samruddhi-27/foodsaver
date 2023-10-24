import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      height: 70,
      width: 130,
      child: Row(
        children: [

          IconButton(
            icon: Icon(Icons.remove_circle_outline_outlined),
            onPressed: () {
              if (counter > 0) {
                setState(() {
                  counter--;
                });
              }
            },
          ),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 20),
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline_outlined),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

