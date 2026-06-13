float calcularDesplazamiento(float posicionMouse) {
  
  return map(posicionMouse, 0, width, -20, 20);
  
}

float calcularGrisConMouse(int fila, float pos) {

  if (fila % 2 == 0) {
    return map(pos, 0, anchoRect, 255, 0);
  } else {
    return map(pos, 0, anchoRect, 0, 255);
  }
}
