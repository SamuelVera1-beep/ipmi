PFont fuente;
float x = 0;
PImage foto1, foto2, foto3, foto4, foto5, foto6, foto7, foto8;

int pantalla = 0;
int tiempoInicio = 0;
int duracionPantalla = 10000;

// Pantalla 2
float textoX = 0;
float textoY = 100;
float tamanoTexto = 20;

// Pantalla 3
float texto2X = 470;
float texto2Y = 470;
boolean moviendoHorizontal = true;
float velocidadTexto2 = 2;
String texto = "Viven en una isla con Kongo-sensei. Su propósito es defenderse de Lunarios,"
  + " identidades que vienen de la luna para capturarlas.";

// Pantalla 4
float text4X = 10;
float text4Y = 50;
String text4 = "Cada gema tiene una dureza que determina su poder en la pelea. "
  + "Esto influye en su resistencia, fuerza y habilidades durante el combate.";
float velocidadTexto4 = 2;

// Pantalla 5
boolean visible = true;
int ultimoCambio = 0;
int intervaloParpadeo = 500;
String text5 = "Nuestre protagonista es Phos, una gema débil que busca su lugar entre sus hermanes."
  + "A lo largo de la historia, elle descubre la verdad de su mundo.";

// Pantalla 6
float reboteX = 10;
float velocidadRebote = 2;
String texto6 = "Phos sufre cambios fisicos y mentales. Descubre que los Lunarianos son"
  + " almas de humanos y Kongo una maquina que debía enviarles al Nirvana mediante rezos.";
int rebotes = 0;

// Pantalla 7
float tamTexto7 = 20;
boolean agrandando = true;
String texto7 = "Phos logra enviarles a todes a la paz, en consecuencia quedandose sole,"
  + " meditando como budista hasta alcanzar la iluminación, trascendiendo a un ser divino.";
boolean cicloCompleto = false;

// Boton
int botonX = 530;
int botonY = 420;
int botonAncho = 90;
int botonAlto = 40;

void setup() {
  size(640, 480);
  fuente = loadFont("BodoniMT-Bold-48.vlw");
  textFont(fuente);
  tiempoInicio = millis();
  foto1 = loadImage("foto1.jpeg");
  foto2 = loadImage("foto2.jpeg");
  foto3 = loadImage("foto3.jpeg");
  foto4 = loadImage("foto4.jpeg");
  foto5 = loadImage("foto5.jpeg");
  foto6 = loadImage("foto6.jpeg");
  foto7 = loadImage("foto7.jpeg");
  foto8 = loadImage("foto8.jpeg");
}

void draw() {
  int tiempoActual = millis();
  int tiempoPasado = tiempoActual - tiempoInicio;

  if (tiempoPasado >= duracionPantalla && pantalla < 7) {
    pantalla++;
    tiempoInicio = tiempoActual;

    // Reinicios
    if (pantalla == 1) {
      textoX = 100;
      textoY = 200;
      tamanoTexto = 12;
    } else if (pantalla == 2) {
      texto2X = 470;
      texto2Y = 470;
      moviendoHorizontal = true;
      velocidadTexto2 = 2;
    } else if (pantalla == 3) {
      text4Y = 50;
    } else if (pantalla == 4) {
      visible = true;
      ultimoCambio = millis();
    } else if (pantalla == 5) {
      reboteX = 10;
      rebotes = 0;
    } else if (pantalla == 6) {
      tamTexto7 = 20;
      agrandando = true;
      cicloCompleto = false;
    }
  }

  background(255);
  fill(0);
//PANTALLA 0
  if (pantalla == 0) {
    image(foto1, 0, 0, width, height);
    text("En un futuro lejano, la Tierra fue devastada por el impacto de seis meteoritos", x, height / 4, 400, height);
    x += 1;
  } 
 //PANTALLA 1
 else if (pantalla == 1) {
   image(foto2, 0, 0, width, height);
  textSize(tamanoTexto);
    text("En este mundo existen humanoides inmortales hechos de gemas.", 100, height / 4, 400, height);
    if (textoX < 500) textoX += 2;
    if (textoY < 300) textoY += 1;
    if (tamanoTexto < 48) tamanoTexto += 0.5;
  } 
  //PANTALLA 2
  else if (pantalla == 2) {
    image(foto3, 0, 0, width, height);
    textSize(tamanoTexto);
    text(texto, texto2X, texto2Y, 370, 650);
    if (moviendoHorizontal) {
      texto2X -= velocidadTexto2;
      if (texto2X <= width / 2 - 150) moviendoHorizontal = false;
    } else {
      texto2Y -= velocidadTexto2;
      if (texto2Y <= 10) velocidadTexto2 = 0;
    }
  } 
  //PANTALLA 3
  else if (pantalla == 3) {
    image(foto4, 0, 0, width, height);
    textAlign(LEFT, TOP);
    textSize(20);
    text(text4, text4X, text4Y, 400, height - text4Y);
    if (text4Y < height / 2) {
      text4Y += velocidadTexto4;
      if (text4Y > height / 2) text4Y = height / 2;
    }
  } 
  //PANTALLA 4
  else if (pantalla == 4) {
    image(foto5, 0, 0, width, height);
    if (millis() - ultimoCambio > intervaloParpadeo) {
      visible = !visible;
      ultimoCambio = millis();
    }
    if (visible) {
      text(text5, 100, height / 4, 400, height);
    }
  }

  // PANTALLA 5
  else if (pantalla == 5) {
    image(foto6, 0, 0, width, height);
    text(texto6, reboteX, height / 4, 400, height);
    if (rebotes < 2) {
      reboteX += velocidadRebote;
      if (reboteX > width - 300 || reboteX < 0) {
        velocidadRebote *= -1;
        rebotes++;
      }
    }
  }

  // PANTALLA 6
  else if (pantalla == 6) {
    image(foto7, 0, 0, width, height);
    textSize(tamTexto7);
    text(texto7, 100, height / 4, 500, height);
    if (!cicloCompleto) {
      if (agrandando) {
        tamTexto7 += 0.5;
        if (tamTexto7 >= 40) agrandando = false;
      } else {
        tamTexto7 -= 0.5;
        if (tamTexto7 <= 20) cicloCompleto = true;
      }
    }
  }

  // PANTALLA 7
  else if (pantalla == 7) {
    image(foto8, 0, 0, width, height);
    text("Fin de la presentación", 100, height / 4, 400, height);
    fill(200);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(0);
    textSize(20);
    text("Reiniciar", botonX + 10, botonY + 20);
    textSize(48);
  }
}

void mouseClicked() {
  if (pantalla == 7) {
    if (mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
      pantalla = 0;
      tiempoInicio = millis();
      x = 0;
    }
  }
}
