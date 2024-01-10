import 'package:flutter/material.dart';
import 'package:sunicons/sunicons.dart';

class DemoIcon extends StatelessWidget {
  const DemoIcon({super.key});

  @override
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
        title: "Sun Icons",
        home: Scaffold(
          backgroundColor: const Color(0xFFF9F9F9),
          appBar: AppBar(
            title: const Text('Sun Icon'),
          ),
          body: const Icon(SunIcons.sun),
        )
    );
  }
}
