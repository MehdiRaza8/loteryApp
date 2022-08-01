import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppPage extends StatefulWidget {
  AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lottery winning number is 5',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: x == 5 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: x == 5 ? Colors.teal : Colors.grey.withOpacity(.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            size: 40,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Congratulation You have  win the lottrey Your Number $x ',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            size: 40,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Better luck next time your number is $x\ntry again',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(6);
          print(x);
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
