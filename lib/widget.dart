import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WigetApp extends StatelessWidget {
  const WigetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-1382731.jpg&fm=jpg'),
                        ),
                        title: Text('Hi!!!!!!'),
                        subtitle: Text('Hay'),
                        trailing: Icon(
                          Icons.done_all,
                          color: Colors.blue,
                        ),
                      );
                    })),
            // Padding(
            //   padding: EdgeInsets.all(15.0),
            //   child: TextFormField(
            //     keyboardType: TextInputType.phone,
            //     decoration: InputDecoration(
            //         hintText: 'Email',
            //         prefixIcon: Icon(
            //           Icons.email_outlined,
            //           color: Colors.grey,
            //         ),
            //         suffixIcon: Icon(Icons.alternate_email_outlined),
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.teal),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.red),
            //           borderRadius: BorderRadius.circular(10),
            //         )),
            //   ),
            // )
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
      ),
    );
  }
}
