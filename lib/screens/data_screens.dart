import 'package:flutter/material.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DataScreen',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Los postres que te gustan son',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 20), // Espacio entre los textos
            const Text(
              'Tu nombre es',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Dijisque que flutter te gusta',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'En esta escala te gusta',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
