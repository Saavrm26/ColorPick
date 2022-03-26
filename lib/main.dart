import 'dart:math';
import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MediaQuery(
          data:const MediaQueryData(),
          child: Scaffold(
              appBar: AppBar(
                title: const Text("LEVEL 1"),
                backgroundColor: correctColor,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
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
                  level1(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height),
                ],
              ),
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
  List<Color> randColor = [Colors.red,Colors.yellow,Colors.blue,Colors.green,Colors.orange,Colors.brown,Colors.deepPurple,Colors.lightGreen,Colors.teal];
  Color correctColor=Colors.red;
  void doStuff(){
    int x=generateRandom()+1;
    // print(x);
    // print(randColor[0]);
    setState(() {
      rotateBy(x);
      correctColor=randColor[generateRandom()];
    });

  }

  Container level1(double deviceWidth,double deviceHeight) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[0],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[0]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[1],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[1]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[2],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[2]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[3],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[3]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[4],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[4]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[5],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[5]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[6],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[6]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[7],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[7]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              ),
              Expanded(
                flex: generateRandom()+1,
                child: InkWell(
                  child: IgnorePointer(
                    child: Container(
                      color:randColor[8],
                      width: deviceWidth/10,
                      height: deviceWidth/4,
                    ),
                  ),
                  onTap: (){
                    if(randColor[8]==correctColor) {
                      doStuff();
                    }
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
