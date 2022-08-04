import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WigetApp extends StatelessWidget {
  const WigetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: 'Hello',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 50),
                children: [
                  TextSpan(
                      text: 'World',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
                ]),
          )
          //   Row(
          //     children: [
          //       Expanded(
          //         flex: 1,
          //         child: Container(
          //           color: Colors.red,
          //           height: 250,
          //           child: Text('Container'),
          //         ),
          //       ),
          //       Expanded(
          //         flex: 2,
          //         child: Container(
          //           color: Colors.yellow,
          //           height: 250,
          //           child: Text('Container'),
          //         ),
          //       )
          //     ],
          //   ),
          //   Center(
          //     child: Container(
          //       height: 250,
          //       width: 200,
          //       decoration: BoxDecoration(
          //           color: Colors.teal,
          //           borderRadius: BorderRadius.circular(10),
          //           boxShadow: const [
          //             BoxShadow(
          //               color: Colors.grey,
          //               blurRadius: 10,
          //             ),
          //           ],
          //           image: DecorationImage(
          //               fit: BoxFit.cover,
          //               image: NetworkImage(
          //                   'https://images.unsplash.com/photo-1659412321527-8cddf2458faa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'))),
          //       child: const Center(
          //           child: Text(
          //         'Login',
          //         style: TextStyle(color: Colors.white),
          //       )),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
