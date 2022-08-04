import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  Random random = Random();
  int x = 0;
  Color _color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Lottery App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery winning number is 5',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedContainer(
              height: x == 5 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: x == 5 ? Colors.teal : Colors.grey.withOpacity(.3),
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            size: 40,
                            color: Colors.green,
                          ),
                          const SizedBox(
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
                          const Icon(
                            Icons.error,
                            size: 40,
                            color: Colors.red,
                          ),
                          const SizedBox(
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

          setState(() {
            final _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
