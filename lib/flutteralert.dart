import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Flutteralerts extends StatelessWidget {
  const Flutteralerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(backgroundColor: Colors.black54,
          appBar: AppBar(
            title: Text('Some Alerts Example',style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.yellow[300],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showAlert1(context);
                  },
                  child: Text('First Alert'),
                ),
                SizedBox(height: 20),
                ElevatedButton(

                  onPressed: () {
                    _showAlert2(context);
                  },
                  child: Text('Second Alert'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showAlert3(context);
                  },
                  child: Text('Third Alert '),
                ),
              ],
            ),
          ),
        ),
      );
    }
    _showAlert1(BuildContext context) {
      Alert(
        context: context,
        type: AlertType.success,
        title: "Alert 1",
        desc: "This is the first alert.",
        buttons: [
          DialogButton(
            child: Text(
              "OKAKYYY🤩🤩",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Colors.green,
          ),
        ],
      ).show();
    }
    _showAlert2(BuildContext context) {
      Alert(
        context: context,
        type: AlertType.error,
        title: "Alert 2",
        desc: "This is the second alert.",
        buttons: [
          DialogButton(
             child:Icon(Icons.backspace_outlined),
             onPressed: () => Navigator.pop(context),
            color: Colors.red,
          ),
        ],
      ).show();
    }


    _showAlert3(BuildContext context) {
      Alert(
        context: context,
        type: AlertType.info,
        title: "Alert 3",
        desc: "This is the third alert.",
        buttons: [
          DialogButton(
            child: Text(
              "OH🤷‍♀️🤷‍",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Colors.blue,
          ),
        ],
      ).show();
    }
  }