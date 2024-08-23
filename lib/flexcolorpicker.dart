import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

class Flexcolorpickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex Color Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorPickerExample(),
    );
  }
}

class ColorPickerExample extends StatefulWidget {
  @override
  _ColorPickerExampleState createState() => _ColorPickerExampleState();
}

class _ColorPickerExampleState extends State<ColorPickerExample> {
  Color _currentColor = Colors.blue; // رنگ پیش‌فرض

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text('Flex Color Picker Example'),
        backgroundColor: Colors.yellow[300],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _currentColor,
          ),
          onPressed: () async {
            final Color? pickedColor = await showColorPickerDialog(
              context,
              _currentColor,
              title: Text('Pick a color'),
              pickersEnabled: const <ColorPickerType, bool>{
                ColorPickerType.both: true,
              },
              enableOpacity: true,
              opacitySubheading: Text('Opacity'),
              includeIndex850: false,
            );
            if (pickedColor != null && pickedColor != _currentColor) {
              setState(() {
                _currentColor = pickedColor;
              });
            }
          },
          child: Text(
            'Select Color',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}