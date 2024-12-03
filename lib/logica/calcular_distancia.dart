import 'dart:math';

class CalculoDistancia{
  double calcularDistancia(int x1, int x2, int y1, int y2){
    y1 = y1 - y2;
    double distancia = sqrt((pow(x1, 2))+(pow(y1, 2)));
    return distancia;
  }
}