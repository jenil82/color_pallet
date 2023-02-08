import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List color = [
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.green,
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Color Pallet",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: color[i],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i = 0;
                    });
                  },
                  child: Text("Blue"),
                  S
                ),ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i = 1;
                    });
                  },
                  child: Text("black"),
                ),ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i = 2;
                    });
                  },
                  child: Text("red"),
                ),ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i = 3;
                    });
                  },
                  child: Text("green"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
