void dibujarBloque(float x, float y, int fila) {

  for (int i = 0; i < anchoRect; i++) {

    float pos = i + desplazamiento;

    float gris = calcularGrisConMouse(fila, pos);

    stroke(gris);
    line(x + i, y, x + i, y + altoRect);
    
  }
    
  stroke(100);
  noFill();
  rect(x, y, anchoRect, altoRect);
  
 }
