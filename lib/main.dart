import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  const ColorChangeWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  Color _currentColor = Colors.green;

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
        height: 100,
        color: _currentColor,
        child: const Center(
          child: Text(  //cuadro de texto para cambiar  el color
            'Presionar Cambiar Color',
            style: TextStyle(
              color: Colors.white,// Color de laa letras en cuadro
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
        title: const Text('Prueba 1 Diferente color'),
      ),
      body: const Center(
        child: ColorChangeWidget(),//llamamos al widget
      ),
    ),
  ));
}
