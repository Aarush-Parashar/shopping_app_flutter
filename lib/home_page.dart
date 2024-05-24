import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    );

    return const Scaffold(
        body: SafeArea(
      minimum: EdgeInsets.fromLTRB(10, 30, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Shoes \nCollection',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: border,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
