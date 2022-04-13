import 'package:flutter/material.dart';
import 'package:flutter_application_1/question_class.dart';

void main() => runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Quizer App'),
        ),
        body: QuizerApp(),
      )),
    ));

class QuizerApp extends StatefulWidget {
  const QuizerApp({Key? key}) : super(key: key);

  @override
  _QuizerAppState createState() => _QuizerAppState();
}

class _QuizerAppState extends State<QuizerApp> {
  List<Widget> rowEle = [];

  int index = 0;
  questionAnswer questionAnswerObj = new questionAnswer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Container(
              child: Text(
                questionAnswerObj.classQuestion[index].questionStatement,
                // 'Questions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                if (index < questionAnswerObj.classQuestion.length - 1) {
                  if (questionAnswerObj.classQuestion[index].questionanswer ==
                      true) {
                    rowEle.add(Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ));
                  } else {
                    rowEle.add(Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 30,
                    ));
                  }

                  index++;
                }
              });
            },
            child: Text(
              'Yes',
              style: TextStyle(
                // backgroundColor: Colors.white,
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((Color) => Colors.blue),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                if (index < questionAnswerObj.classQuestion.length - 1) {
                  if (questionAnswerObj.classQuestion[index].questionanswer ==
                      false) {
                    rowEle.add(Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 30,
                    ));
                  } else {
                    rowEle.add(Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 30,
                    ));
                  }

                  index++;
                }
              });
            },
            child: Text(
              'No',
              style: TextStyle(
                // backgroundColor: Colors.white,
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((Color) => Colors.red),
            ),
          ),
        ),
        Row(
          children: rowEle,
        )
      ],
    );
  }
}
