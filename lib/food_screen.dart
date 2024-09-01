import 'dart:math';
//import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
//import 'package:glassmorphism/glassmorphism.dart';

import 'package:google_generative_ai/google_generative_ai.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';

// ... (keep the existing imports and comments)

class FoodScreen extends StatefulWidget {
  const FoodScreen({
    super.key,
    required this.protein,
    required this.calories,
    required this.totalFats,
    required this.cholesterol,
    required this.sodium,
    required this.addedSugars,
  });

  final double protein;
  final double calories;
  final double totalFats;
  final double cholesterol;
  final double sodium;
  final double addedSugars;



  @override
  // ignore: library_private_types_in_public_api
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  String geminiText = "Working on an overview...";

  String foodName = "Lays potato chips"; //using as a default for now

  //double calories = 540; //calories
  //double protein = 12; //grams
  //double totalFats = 12; //grams
  //double cholesterol = 140; //milligrams
  //double sodium = 800; //milligrams
  //double addedSugars = 14; //grams

  //these two are a bit of forward thinking, but not absolutely necessary for now
  double saturatedFats = 0;
  double transFats = 0;

  String caloriesResponse = "";
  String proteinResponse = "";
  String totalFatsResponse = "";
  String cholesterolResponse = "";
  String sodiumResponse = "";
  String addedSugarsResponse = "";

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.forward();
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: 'AIzaSyCqUgW1EqGgk2T5XRgRTk7A0MH_M3cgbmc',
      //apiKey: dotenv.env['key'] ?? 'key not found',
    );
    final content = [
      Content.text(
          "Overall, summarize the health quality of $foodName without using any numerical evidence, only qualitative data. Specifically, answer the following questions: How healthy or unhealthy is it and why (if it's unhealthy, can you still have it once in awhile? What are some good alternatives to it if it is unhealthy, and if it's healthy, what are some similar foods? Be appropriate and professional, do not ask for any feedback, introduce yourself, or ask for more information in any way. In other words, write this as if it were written by a human with sole purpose of conveying information to a reader. Additionally, use fairly simple terminology such that a 13 or 14 year old could easily understand. Finally, use no more than 320 words.")
    ];

    JUSTLOADTHESTUPIDMODEL(model, content);
  }

  void JUSTLOADTHESTUPIDMODEL(model, content) async {
    final response = await model.generateContent(content);
    setState(() {
      geminiText = response.text ?? "Gemini is not currently responding.";
    });
  }

  void gaugeClicked(value, type) async {
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: 'AIzaSyCqUgW1EqGgk2T5XRgRTk7A0MH_M3cgbmc',
      //apiKey: dotenv.env['key'] ?? 'key not found',
    );
    final content = [
      Content.text(
          "From a healthiness perspective, analyze what it means for the food item $foodName to have $value of $type. Be appropriate and professional, do not ask for any feedback, introduce yourself, or ask for more information in any way. In other words, write this as if it were written by a human with sole purpose of conveying information to a reader. Additionally, use fairly simple terminology such that a 13 or 14 year old could easily understand. Finally, use no more than 250 words.")
    ];

    switch (type) {
      case "calories":
        if (caloriesResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          caloriesResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = caloriesResponse;
          });
        }
        break;
      case "grams of protein":
        if (proteinResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          proteinResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = proteinResponse;
          });
        }
        break;
      case "grams of total fats":
        if (totalFatsResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          totalFatsResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = totalFatsResponse;
          });
        }
        break;
      case "milligrams of cholesterol":
        if (cholesterolResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          cholesterolResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = cholesterolResponse;
          });
        }
        break;
      case "milligrams of sodium":
        if (sodiumResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          sodiumResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = sodiumResponse;
          });
        }
        break;
      case "grams of added sugars":
        if (addedSugarsResponse == "") {
          final response = await model.generateContent(content);
          setState(() {
            geminiText = response.text ?? "Gemini is not currently responding.";
          });
          addedSugarsResponse =
              response.text ?? "Gemini is not currently responding.";
        } else {
          setState(() {
            geminiText = addedSugarsResponse;
          });
        }
        break;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            title: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              child: GradientText(
                'Project Ambrosia',
                style: TextStyle(
                  //fontSize: MediaQuery.of(context).size.width * 0.07, // Responsive font size
                  fontSize: min(MediaQuery.of(context).size.width * 0.08, 70.0),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 133, 221, 233),
                  Color(0xFFfaf2e8),
                  Color(0xFFfdd5c8),
                  Color(0xFFf69f98),
                ]),
              ),
            ),
            toolbarHeight: 90,
            backgroundColor: const Color.fromARGB(0, 29, 29, 29),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: min(MediaQuery.of(context).size.width * 0.07, 50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            // Wrap FittedBox here

            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: FittedBox(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Column(children: [
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.calories / 2000),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(widget.calories, "calories");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  child: Text("Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                      )),
                                ),
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.protein / 50),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(
                                            widget.protein, "grams of protein");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    child: Text("Protein",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ))),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Column(children: [
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.totalFats / 78),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(
                                            widget.totalFats, "grams of total fats");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    child: Text("Total Fats",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ))),
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.cholesterol / 300),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(widget.cholesterol,
                                            "milligrams of cholesterol");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    child: Text("Cholesterol",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ))),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Column(children: [
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.sodium / 2300),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(
                                            widget.sodium, "milligrams of sodium");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    child: Text("Sodium",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ))),
                                Container(
                                  //color: Colors.amber,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF1f1b24),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  child: SizedBox(
                                    child: TextButton(
                                      child: AnimatedGauge(
                                          value: 100 * (widget.addedSugars / 50),
                                          color: Color.fromRGBO(24, 23, 23, 1),
                                          animation: _animationController),
                                      onPressed: () {
                                        gaugeClicked(widget.addedSugars,
                                            "grams of added sugars");
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    child: Text("Added Sugars",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ))),
                              ]),
                            ),
                            Column(children: [
                              SizedBox(
                                child: Transform.translate(
                                  offset: Offset(0, -20),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: MediaQuery.of(context).size.width >
                                            1150
                                        ? Container(
                                            margin: EdgeInsets.only(left: 50),
                                            height: 840,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              color: Color(0xFF1f1b24),
                                              border: Border.all(
                                                width: 20,
                                                color: Color(0xFF1f1b24),
                                              ),
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: StatefulBuilder(
                                                  builder: (context, setState) {
                                                return Center(
                                                  child: SingleChildScrollView(
                                                    padding: EdgeInsets.all(
                                                        30), // Added padding for offset
                                                    child: Text(
                                                      geminiText,
                                                      softWrap: true,
                                                      maxLines: 1000,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontSize:
                                                            (MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                50),
                                                        color: Colors.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: MediaQuery.of(context).size.width < 1150
                ? Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 25),
                      color: Color(0xFF1f1b24),
                      border: Border.all(width: 20, color: Color(0xFF1f1b24)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: StatefulBuilder(builder: (context, setState) {
                        return Center(
                          child: SingleChildScrollView(
                              child: Text(
                            geminiText,
                            softWrap: true,
                            maxLines: 1000,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize:
                                  (MediaQuery.of(context).size.width / 35),
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        );
                      }),
                    ),
                  )
                : Container(),
          ),
        ]),
      ),
    );
  }
}

class AnimatedGauge extends StatelessWidget {
  final double value;
  final Color color;
  final Animation<double> animation;

  const AnimatedGauge({
    Key? key,
    required this.value,
    required this.color,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Adjust height as needed
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final currentValue = value * animation.value;
            return SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 4500,
              axes: <RadialAxis>[
                RadialAxis(
                  axisLineStyle: const AxisLineStyle(
                    thickness: 12,
                    cornerStyle: CornerStyle.bothCurve,
                    gradient: SweepGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 55, 157, 170),
                        Color.fromARGB(255, 238, 137, 129),
                      ],
                      stops: <double>[0.0, 1.0],
                    ),
                  ),
                  showLabels: false,
                  minorTicksPerInterval: 4,
                  tickOffset: 5,
                  majorTickStyle: const MajorTickStyle(
                    length: 0.04,
                    lengthUnit: GaugeSizeUnit.factor,
                    thickness: 1.5,
                    color: Color.fromARGB(255, 192, 192, 192),
                  ),
                  minorTickStyle: const MinorTickStyle(
                    length: 0.025,
                    lengthUnit: GaugeSizeUnit.factor,
                    thickness: 1.5,
                    color: Color.fromARGB(255, 121, 119, 119),
                  ),
                  minimum: 0,
                  maximum: 100,
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      enableAnimation: true,
                      animationDuration: 3500,
                      value: currentValue,
                      needleLength: 0.80,
                      needleStartWidth: 0,
                      needleEndWidth: 5,
                      knobStyle: const KnobStyle(
                        color: Color.fromARGB(255, 29, 29, 29),
                        borderColor: Color.fromARGB(255, 226, 220, 220),
                        borderWidth: 0.03,
                        knobRadius: 0.05,
                      ),
                      tailStyle: const TailStyle(width: 4, length: 0.25),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        "",
                        style: const TextStyle(fontSize: 30.0),
                      ),
                      angle: 90,
                      positionFactor: 0.9,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
