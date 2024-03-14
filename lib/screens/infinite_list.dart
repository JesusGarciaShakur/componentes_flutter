import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: const Center(
        child: Text('Lista'),
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
