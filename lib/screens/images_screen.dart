import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 3;
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        backgroundColor: const Color.fromARGB(255, 20, 18, 18),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 24, 23, 23),
            icon: Icon(
              Icons.home,
              color: AppTheme.backColor,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 24, 23, 23),
            icon: Icon(
              Icons.next_plan_rounded,
              color: AppTheme.backColor,
            ),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 24, 23, 23),
            icon: Icon(
              Icons.notification_add,
              color: AppTheme.backColor,
            ),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 24, 23, 23),
            icon: Icon(
              Icons.image,
              color: AppTheme.backColor,
            ),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 24, 23, 23),
            icon: Icon(
              Icons.exit_to_app,
              color: AppTheme.backColor,
            ),
            label: 'Lista',
          ),
        ],
      ),
    );
  }

  openScreen(BuildContext context, int index) {
    MaterialPageRoute ruta = MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteList());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const Notifications());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }
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
