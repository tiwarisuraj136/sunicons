import "package:flutter/material.dart";
import 'package:sunicons/sunicons.dart';

import './icons_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget iconCard(IconData iconData, String iconName) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 50.0,
          ),
          const SizedBox(height: 30.0),
          Text(iconName)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sun Brand Icons Example",
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: const Text('SunBrand Icons', style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),

          backgroundColor: Colors.red,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return iconCard(
              iconDataList[index],
              iconNameList[index],
            );
          },
          itemCount: iconDataList.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          backgroundColor: Colors.yellow,
          child: const Icon(SunIcons.apple),
          // child: const Icon(EvaIcons.micOutline),
        ),
      ),
    );
  }
}