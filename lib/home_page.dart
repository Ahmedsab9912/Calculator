import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'my_components/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var userInput = '';
var answer = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.centerRight,
                        child:  Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(alignment: Alignment.bottomRight,
                        child: Text(
                          answer.toString(),
                          style: TextStyle(fontSize: 45, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: 'AC',
                        onPres: () {
                         userInput = '';
                         answer = '';
                         setState(() {

                         });
                        },
                      ),
                      MyButton(
                        title: '+/-',
                        onPres: () {
                          userInput +='+/-';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '%',
                        onPres: () {
                          userInput +='%';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '/',
                        color: Colors.orange,
                        onPres: () {
                          userInput +='/';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '7',
                        onPres: () {
                         userInput +='7';
                         setState(() {

                         });
                        },
                      ),
                      MyButton(
                        title: '8',
                        onPres: () {
                          userInput +='8';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '9',
                        onPres: () {
                          userInput +='9';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: 'x',
                        color: Colors.orange,
                        onPres: () {
                          userInput +='*';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '4',
                        onPres: () {
                          userInput +='4';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '5',
                        onPres: () {
                          userInput +='5';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '6',
                        onPres: () {
                          userInput +='6';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '-',
                        color: Colors.orange,
                        onPres: () {
                          userInput +='-';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '1',
                        onPres: () {
                          userInput +='1';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '2',
                        onPres: () {
                          userInput +='2';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '3',
                        onPres: () {
                          userInput +='3';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '+',
                        color: Colors.orange,
                        onPres: () {
                          userInput +='+';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '0',
                        onPres: () {
                          userInput +='0';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '.',
                        onPres: () {
                          userInput +='.';
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: 'DEL',
                        onPres: () {
                          userInput =userInput.substring(0,userInput.length -1);
                          setState(() {

                          });
                        },
                      ),
                      MyButton(
                        title: '=',
                        color: Colors.orange,
                        onPres: () {
                          equalPress ();
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}


void equalPress (){
 Parser p = Parser();
 Expression expression = p.parse(userInput);
 ContextModel contextModel = ContextModel();

 double eval = expression.evaluate(EvaluationType.REAL, contextModel);
 answer = eval.toString();
}