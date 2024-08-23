import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fontawesome extends StatefulWidget {
  const Fontawesome({super.key});

  @override
  State<Fontawesome> createState() => _FontawesomeState();
}

class _FontawesomeState extends State<Fontawesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Font Awesome Example',style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow[300]
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {}, icon: FaIcon(FontAwesomeIcons.houseMedical,color: Colors.white,)),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.black,
              ),
              label: const Text(
                'Like',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.thumbsDown,
                color: Colors.black,
              ),
              label: const Text(
                'DisLike',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
