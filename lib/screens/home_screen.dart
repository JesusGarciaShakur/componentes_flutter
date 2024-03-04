import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/inputs.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App de componentes de flutter',
          selectionColor: AppTheme.dBarColor,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Recuperar informacion en TextField',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.input_rounded,
              color: AppTheme.primaryColor,
            ),
            trailing: const CircularProgressIndicator(
              value: 0.5,
            ),
            // trailing: const Icon(
            //   Icons.arrow_right_alt_outlined,
            //   color: AppTheme.primaryColor,
            // ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const Inputs();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Lista infinita',
                style: AppTheme.lightTheme.textTheme.headlineLarge
                //style: Theme.of(context).textTheme.headlineLarge,
                ),
            subtitle: Text(
              'Recuperar muchos elementos',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.list_alt_sharp,
              color: AppTheme.primaryColor,
            ),
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteList();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Notificaciones',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text(
              'Manejo de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(
              Icons.notification_important,
              color: AppTheme.primaryColor,
            ),
            trailing: const Icon(
              Icons.arrow_right_alt_outlined,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const Notifications();
              });
              Navigator.push(context, ruta3);
            },
          ),
        ],
      ),
    );
  }
}
