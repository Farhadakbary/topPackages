import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fluttertoast.dart';
import 'fontawsome.dart';
import 'flutteralert.dart';
import 'english_words.dart';
import 'photo_view.dart';
import 'shimmer.dart';
import 'flexcolorpicker.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Toppackages()));
}

class Toppackages extends StatelessWidget {
   Toppackages({super.key});
   final List<Widget> clases=[
     Fontawesome(),
     Fluttertoastexample(),
     Flutteralerts(),
     EnglishWords(),
     PhotoViews(),
     Shimmers(),
     Flexcolorpickers()
   ];
 final List <String> packages=[
   'font_awsome_flutter',
   'flutter toast',
   'flutter alert',
   'english words',
   'photo view',
   'shimmer',
   'flex_color_picker'
 ];
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text(
          'Top Flutter packages',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black45,
      ),
      body:ListView.builder(itemCount: packages.length,itemBuilder: (context, index){
        return Card(
          margin: EdgeInsets.all(1),
          child: ListTile(
            onTap: (){},
            splashColor: Colors.teal,
             tileColor: Colors.yellow[300],
             title: Text('${packages[index]}',style: TextStyle(color: Colors.black),),
            trailing: IconButton(onPressed: (){
             Navigator.push(context,  MaterialPageRoute(builder: (context)=> clases[index]));
            }, icon:Icon(Icons.navigate_next,color: Colors.black,)),
          ),
        );
      })
     
    );
  }
}
