import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const Image(
              image: AssetImage('assets/img/lata.jpg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Latas pintura',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }

  Widget imageWeb() {
    return Center(
      child: Image.network(
          'https://i.pinimg.com/170x/83/f5/76/83f576f36e7db994fadbbd4640a21f63.jpg'),
    );
  }
}
