import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';


class Fluttertoastexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('Fluttertoast Example',style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow[300],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Fluttertoast.showToast(msg: "Hello this is the first toast",
                toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM_LEFT,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.yellow[300],
                  textColor: Colors.black
                );
              }, child: Text('THE FIRST TOAST')),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Hello, this is the second toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.yellow[300],
                    textColor: Colors.black,
                    fontSize: 16.0,
                  );
                },
                child: Text('Show Toast'),
              ),
            ],
          ),
        ),
    ),
    );
  }
}