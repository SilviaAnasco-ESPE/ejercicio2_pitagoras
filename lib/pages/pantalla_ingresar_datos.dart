import 'package:ejercicio2_pitagoras_anasco/pages/pantalla_calcular_distancia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../logica/calcular_distancia.dart';

class IngresarDatosPage extends StatelessWidget {

//declarar objetos visuales

final TextEditingController _x1Controller = TextEditingController();
final TextEditingController _y1Controller = TextEditingController();
final TextEditingController _x2Controller = TextEditingController();
final TextEditingController _y2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar coordenadas de los puntos'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  //Punto 1
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.lightBlue.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Punto 1"),
                          TextFormField(
                            controller: _x1Controller,
                            decoration: InputDecoration(
                              labelText: 'Coordenada x:',
                              hintText: 'Ingrese el valor de la primera coordenada del punto 1',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _y1Controller,
                            decoration: InputDecoration(
                              labelText: 'Coordenada y:',
                              hintText: 'Ingrese el valor de la segunda coordenada del punto 1',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  //Punto 2
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.lightGreen.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Punto 2",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          TextFormField(
                            controller: _x2Controller,
                            decoration: InputDecoration(
                              labelText: 'Coordenada x:',
                              hintText: 'Ingrese el valor de la primera coordenada del punto 2',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _y2Controller,
                            decoration: InputDecoration(
                              labelText: 'Coordenada y:',
                              hintText: 'Ingrese el valor de la segunda coordenada del punto 2',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                int? x1 = int.parse(_x1Controller.text.trim()) ?? null;
                int? y1 = int.parse(_y1Controller.text.trim()) ?? null;
                int? x2 = int.parse(_x2Controller.text.trim()) ?? null;
                int? y2 = int.parse(_y2Controller.text.trim()) ?? null;


                if (x1 != null && y1 != null && x2 != null && y2 != null)
                {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => CalcularDistanciaPage(
                          x1: x1,
                          y1: y1,
                          x2: x2,
                          y2: y2
                      ),

                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, ingrese datos válidos'),
                      duration: Duration(seconds: 2),
                    ),

                  );
                }

              },
              style : ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color.fromARGB(255, 153, 82, 82),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              child: Text('Guardar Datos'),
            ),
          ],
        ),
      ),
    );

  }
}