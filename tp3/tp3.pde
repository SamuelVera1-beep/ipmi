// https://youtu.be/qr01RHWXXRI

PImage foto01;

int columnas = 8;
int filas = 14;

int anchoRect = 50;
int altoRect = 28;

float desplazamiento;
boolean reset = false;

 
void setup(){
  size(800,400);
  foto01 = loadImage("foto01.jpg");
}

void draw(){
  background(255);
  image(foto01, 0,0, width/2, height);
  
  
    if (!reset) {
       desplazamiento = calcularDesplazamiento(mouseX);
      } else {
        desplazamiento = 0;
     }
  
  float eX = width/2;
  float eY = 0;

  for (int fila = 0; fila < filas; fila++) {

    for (int col = 0; col < columnas; col++) {

      float x = eX + col * anchoRect;
      float y = eY + fila * altoRect;

      dibujarBloque(x, y, fila);
    }
  }
}

void keyPressed() {

  if (key == 'r' || key == 'R') {

    reset = true; 
  }
}

void mouseMoved() {
  reset = false;
  
}
