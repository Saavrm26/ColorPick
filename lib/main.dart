import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
      home:Level1 ()
  )
  );
}

class Level1 extends StatefulWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int flag=1;
  double opacityState=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MediaQuery(
          data:const MediaQueryData(),
          child: Scaffold(
              appBar: AppBar(
                title: const Text("COLOR PICK"),
                backgroundColor: correctColor,
              ),
              body:
                    level1(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height),
                    backgroundColor: Colors.grey
          )
      ),
    );
  }
  int generateRandom() {
    Random random = Random();
    return random.nextInt(9);
  }
  void rotateBy(int x){
    for(int i=0;i<x;i++){
      if(x!=1){
        randColor.add(randColor[0]);
        randColor.removeAt(0);
      }
    }
  }
  late Timer _timer=Timer(Duration(seconds: 10), (){});
  void timer(){
    futureFlag=0;
    if(_timer.isActive) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: 1500), () {
      // print(flag);
      if(futureFlag==0){
        flag=0;
        error=Text("Time exceeded");
        doStuff();
      }
    });
  }
  void doStuff(){
    int x=generateRandom()+1;
    // print(x);
    // print(randColor[0]);
    if(flag!=0) {
      setState(() {
        rotateBy(x);
        correctColor = randColor[generateRandom()];
      });
    }
    else{
      setState(() {
        opacityState=0;
      });
    }

  }
  List<Color> randColor = [Colors.red,Colors.yellow,Colors.blue,Colors.green,Colors.orange,Colors.brown,Colors.deepPurple,Colors.lightGreen,Colors.teal];
  Color correctColor=Colors.red;

  int futureFlag=1;
  Text error=Text("Wrong Choice");

  Column level1(double deviceWidth,double deviceHeight) {

    if(flag==1) {
      futureFlag=0;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [const Text("Pick "),Container(
              color: correctColor,
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.width/4,
            )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[0],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[0] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            int i=0;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[1],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[1] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            error=Text("You picked wrong");
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(

                            color: randColor[2],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[2] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[3],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[3] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[4],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[4] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[5],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[5] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[6],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[6] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[7],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[7] == correctColor) {
                            flag=1;
                            futureFlag=1;
                            doStuff();
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: generateRandom() + 1,
                      child: InkWell(
                        child: IgnorePointer(
                          child: Container(
                            color: randColor[8],
                            width: deviceWidth / 10,
                            height: deviceWidth / 4,
                          ),
                        ),
                        onTap: () {
                          if (randColor[8] == correctColor) {
                            flag=1;
                            doStuff();
                            futureFlag=1;
                            // _timer.cancel();
                            timer();
                          }
                          else{
                            flag=0;
                            setState(() {});
                          }
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
    else{
      futureFlag=1;
        return Column(
          children: [
            Container(child: error),
          ],
        );
    }
  }
}
