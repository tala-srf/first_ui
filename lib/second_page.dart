import 'package:flutter/material.dart';
import 'package:run/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const ThirdPage(),
            ),
          );
        },
      ),
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
    );
  }
}

Widget _buildNormalContainer() {
  return Column(
    children: [
      Image.asset('images/srf.jpg'),
      const Data(),
    ],
  );
}

Widget _buildWideContainers() {
  return Column(
    children: [
      Container(
          height: 150,

          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              image: const DecorationImage(
            image: AssetImage('images/srf.jpg'),
          ))),
      const Data(),
    ],
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        //alignment: Alignment.center,

        //height: 40,
        decoration: BoxDecoration(
            border: Border.all(
          width: 4,
          color: Colors.black,
        )),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Icon(
            Icons.book,
            color: Colors.pink,
            size: 20,
          ),
          Padding(
            padding: EdgeInsets.all(2),
          ),
          Text('this is a book',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 18,
              )),
        ]),
      ),
    );
  }
}

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2),

        // itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
        
          return const MyWidget();
        },
      ),
    );
  }
}
