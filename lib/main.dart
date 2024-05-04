import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  const ColorChangeWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  Color _currentColor = Colors.red;

  void _toggleColor() {
    setState(() {
      _currentColor = _currentColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleColor,
      child: Container(
        width: 150,
        height: 90,
        color: _currentColor,
        child: const Center(
          child: Text(
            'Presionar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Diferente color'),
      ),
      body: const Center(
        child: ColorChangeWidget(),
      ),
    ),
  ));
}
