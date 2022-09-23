import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:run/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => SecondPage(),
            ),
          );
        },
      ),
      appBar: AppBar(),
      body: Column(
        children: [Grid1(), Grid2(), Grid3()],
      ),
    ));
  }
}

class Grid1 extends StatelessWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const MyWidget1();
      },
    ));
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                'hello',
                style: TextStyle(color: Colors.black, fontSize: 28),
                ),
            )
          ],
        ),
      ),
    

         
      );


  }
}

class Grid2 extends StatelessWidget {
  const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const MyWidget2();
      },
    ));
  }
}

class Grid3 extends StatelessWidget {
  const Grid3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const MyWidget3();
      },
    ));
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
        body: Container(
          
          alignment: Alignment.center,
       
          child:
         
      CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(
          'images/sss.jpg',
        ),
      ),
      margin: EdgeInsets.all(10),
    )
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
        alignment: Alignment.center,


        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
                   Stack(
                     children:[
            Container(
             
              height: 50,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                'hello',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            ),
               Center(
                 child: CircleAvatar(
                   
                  radius: 50,
        backgroundImage: AssetImage(
          'images/sss.jpg',
        ),
      ),
               ),
                     ]
                   )
         
      ],
        ),


      ),
    );
  }
}
