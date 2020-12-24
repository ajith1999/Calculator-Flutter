import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/logic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String equation = '';
  String answer = '0';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //String lastch = equation.substring(equation.length - 1);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Container(
                height: height * 0.30,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    SingleChildScrollView(
                      child: Text(
                        equation,
                        style: TextStyle(
                            fontSize: height * 0.07, color: Colors.grey),
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                    SingleChildScrollView(
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: height * 0.1,
                            fontWeight: FontWeight.normal),
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: height * 0.64,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            bttype: 'C',
                            fontcolor: Colors.white,
                            color: Colors.redAccent,
                            onpressed: () {
                              setState(() {
                                equation = '';
                                answer = '0';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '⌫',
                            fontcolor: Colors.orange[900],
                            color: Colors.yellow[100],
                            onpressed: () {
                              setState(() {
                                if (equation != '')
                                  equation = equation.substring(
                                      0, equation.length - 1);
                              });
                            },
                          ),
                          MyButton(
                            bttype: '%',
                            fontcolor: Colors.orange[900],
                            color: Colors.yellow[100],
                            onpressed: () {
                              setState(() {
                                if (equation != '' &&
                                    equation.substring(equation.length - 1) !=
                                        '÷' &&
                                    equation.substring(equation.length - 1) !=
                                        'x' &&
                                    equation.substring(equation.length - 1) !=
                                        '+' &&
                                    equation.substring(equation.length - 1) !=
                                        '−' &&
                                    equation.substring(equation.length - 1) !=
                                        '%') {
                                  equation += '%';
                                }
                              });
                            },
                          ),
                          MyButton(
                            bttype: '÷',
                            fontcolor: Colors.purple[900],
                            color: Colors.purple[50],
                            onpressed: () {
                              setState(() {
                                if (equation != '' &&
                                    equation.substring(equation.length - 1) !=
                                        '÷' &&
                                    equation.substring(equation.length - 1) !=
                                        'x' &&
                                    equation.substring(equation.length - 1) !=
                                        '+' &&
                                    equation.substring(equation.length - 1) !=
                                        '−' &&
                                    equation.substring(equation.length - 1) !=
                                        '%') equation += '÷';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            bttype: '7',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '7';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '8',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '8';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '9',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '9';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '×',
                            fontcolor: Colors.purple[900],
                            color: Colors.purple[50],
                            onpressed: () {
                              setState(() {
                                if (equation != '' &&
                                    equation.substring(equation.length - 1) !=
                                        '÷' &&
                                    equation.substring(equation.length - 1) !=
                                        'x' &&
                                    equation.substring(equation.length - 1) !=
                                        '+' &&
                                    equation.substring(equation.length - 1) !=
                                        '−' &&
                                    equation.substring(equation.length - 1) !=
                                        '%') equation += 'x';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            bttype: '4',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '4';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '5',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '5';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '6',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '6';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '−',
                            fontcolor: Colors.purple[900],
                            color: Colors.purple[50],
                            onpressed: () {
                              setState(() {
                                if (equation.substring(equation.length - 1) !=
                                        '-' &&
                                    equation.substring(equation.length - 1) !=
                                        '+') equation += '-';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            bttype: '1',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '1';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '2',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '2';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '3',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                equation += '3';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '+',
                            fontcolor: Colors.purple[900],
                            color: Colors.purple[50],
                            onpressed: () {
                              setState(() {
                                if (equation != '' &&
                                    equation.substring(equation.length - 1) !=
                                        '÷' &&
                                    equation.substring(equation.length - 1) !=
                                        'x' &&
                                    equation.substring(equation.length - 1) !=
                                        '+' &&
                                    equation.substring(equation.length - 1) !=
                                        '−' &&
                                    equation.substring(equation.length - 1) !=
                                        '%') equation += '+';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            bttype: '00',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                if (equation != '') equation += '00';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '0',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                if (equation != '0') equation += '0';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '.',
                            fontcolor: Colors.grey[700],
                            color: Colors.white,
                            onpressed: () {
                              setState(() {
                                if (equation == '')
                                  equation += '0.';
                                else if (equation
                                        .substring(equation.length - 1) !=
                                    '.') equation += '.';
                              });
                            },
                          ),
                          MyButton(
                            bttype: '=',
                            fontcolor: Colors.white,
                            color: Colors.deepPurple,
                            onpressed: () {
                              setState(() {
                                if (equation.indexOf('%') == -1)
                                  answer = Calculator(equation).equalButton();
                                else
                                  answer =
                                      Calculator(equation).percentageButton();
                              });
                            },
                          ),
                        ],
                      ),
                    ]),
              ),
              Container(
                height: height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
