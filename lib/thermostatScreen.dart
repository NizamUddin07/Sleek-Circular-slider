import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ThermostateScreen extends StatefulWidget {
  const ThermostateScreen({super.key});

  @override
  State<ThermostateScreen> createState() => _ThermostateScreenState();
}

class _ThermostateScreenState extends State<ThermostateScreen> {

  double?temprature;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Text("Thermostat", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Living Room", style: TextStyle(fontSize: 15, color: Colors.grey),)
          ],
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(51, 255, 153, 0.4),
              Colors.transparent
            ],
            stops: [0,0.5],
            begin: Alignment.topLeft,
          )
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: GradientBoxBorder(
                  width: 2,
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.transparent,
                    ]
                  )
                )
              ),
              child: SleekCircularSlider(
                min: 10,
                max: 30,
                initialValue: 23,
                innerWidget: (temprature){
                  return
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25)
                          )
                        ]
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        ),

      ),
    );
  }
}
