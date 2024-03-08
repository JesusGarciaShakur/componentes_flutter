import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch = false;
  double sliderValue = 0.0;
  int foodRadio = 0;
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  bool postreCheck3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                entradaTexto(),
                entradaSwitch(),
                entradaSlider(),
                entradaRadio(),
                Text(
                  'Que postres te gustan?',
                  style: AppTheme.lightTheme.textTheme.headlineLarge,
                ),
                entradasCheck(),
                const ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Guardar',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.next_plan_rounded),
            label: 'Datos',
          ),
        ],
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre: ',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: [
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
              });
            })
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value) {
            setState(
              () {
                sliderValue = value;
                //print('Valor de Slider: $sliderValue');
              },
            );
          },
        ),
      ],
    );
  }

  Column entradaRadio() {
    return Column(
      children: [
        Text(
          'Que prefieres usar para el desarrollo movil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Tacos al pastor',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 1,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Chileatole',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 2,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Carne tartara',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 3,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Albondigas',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 4,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        )
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      children: [
        Text(
          'Helado',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck1,
          onChanged: (value) {
            setState(() {
              postreCheck1 = value!;
            });
          },
        ),
        Text(
          'Chocoflan',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck2,
          onChanged: (value) {
            setState(() {
              postreCheck2 = value!;
            });
          },
        ),
        Text(
          'Pastel',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck3,
          onChanged: (value) {
            setState(() {
              postreCheck3 = value!;
            });
          },
        ),
      ],
    );
  }
}
