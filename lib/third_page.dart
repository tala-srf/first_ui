import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return _buildWideContainers();
            } else {
              return _buildNormalContainer();
            }
          },
        ),
      ),
    );
  }
}

Widget _buildNormalContainer() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          //margin: const EdgeInsets.all(10),
          height: 200,
          color: Colors.yellow,
        ),
      ),
      Builder(builder: (context) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                width: 165,
                height: 120,
                color: Colors.yellow,
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  width: 165,
                  height: 120,
                  color: Colors.yellow,
                )),
          ],
        );
      }),
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.yellow,
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                width: 100,
                height: 100,
                color: Colors.yellow,
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.centerRight,
                width: 100,
                height: 100,
                color: Colors.yellow,
              ))
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          height: 100,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          height: 100,
        ),
      )
    ],
  );
}

Widget _buildWideContainers() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          //margin: const EdgeInsets.all(10),
          height: 70,
          color: Colors.yellow,
        ),
      ),
       Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.centerRight,
                width: 400,
                height: 50,
                color: Colors.yellow,
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  margin: const EdgeInsets.all(2),
                  alignment: Alignment.centerLeft,
                  width: 400,
                  height: 50,
                  color: Colors.yellow,
                )),
          ],
        ),
      
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.center,
                width: 80,
                height: 40,
                color: Colors.yellow,
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.centerLeft,
                width: 80,
                height: 40,
                color: Colors.yellow,
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.centerRight,
                width: 80,
                height: 40,
                color: Colors.yellow,
              ))
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          height: 40,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          height: 40,
        ),
      )
    ],
  );
}
