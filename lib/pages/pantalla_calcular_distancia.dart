import 'package:flutter/material.dart';
import '../logica/calcular_distancia.dart';

class CalcularDistanciaPage extends StatefulWidget {
  final int x1;
  final int y1;
  final int x2;
  final int y2;

  const CalcularDistanciaPage({
    super.key,
    required this.x1,
    required this.y1,
    required this.x2,
    required this.y2,
  });

  @override
  _CalcularDistanciaPageState createState() => _CalcularDistanciaPageState();
}

class _CalcularDistanciaPageState extends State<CalcularDistanciaPage> {
  late double distancia;
  final CalculoDistancia logica = CalculoDistancia();

  @override
  void initState() {
    super.initState();
    // Calcular la edad usando la clase Edad
    distancia = logica.calcularDistancia(widget.x1, widget.y1, widget.x2,widget.y2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular Edad'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Punto 1 (x): ${widget.x1}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Punto 1 (y): ${widget.y1}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Punto 2 (x): ${widget.x2}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Punto 2 (y): ${widget.y2}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'La distancia entre los dos puntos es ${distancia}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}