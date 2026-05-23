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

// Pantalla 4
float text4X = 10;
float text4Y = 50;
float velocidadTexto4 = 2;

// Pantalla 5
boolean visible = true;
int ultimoCambio = 0;
int intervaloParpadeo = 500;
int cantidadParpadeos = 0;

// Pantalla 6
float reboteX = 10;
float velocidadRebote = 2;
int rebotes = 0;

// Pantalla 7
float tamTexto7 = 20;
boolean agrandando = true;
boolean cicloCompleto = false;

// Boton
int botonX = 530;
int botonY = 420;
int botonAncho = 100;
int botonAlto = 40;

void setup() {
  size(640, 480);
  fuente = loadFont("BodoniMT-Bold-48.vlw");
  textFont(fuente);
  tiempoInicio = millis();
  foto1 = loadImage("foto1.jpg");
  foto2 = loadImage("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  foto4 = loadImage("foto4.jpg");
  foto5 = loadImage("foto5.jpg");
  foto6 = loadImage("foto6.jpg");
  foto7 = loadImage("foto7.jpg");
  foto8 = loadImage("foto8.jpg");
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
      cantidadParpadeos = 0;
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
  fill(240,132,132);
//PANTALLA 0
  if (pantalla == 0) {
    image(foto1, 0, 0, width, height);
    textSize(20);
    text("Nuestra protagonista Hornet se encuentra sola en un gran reino desconocido.", x, height / 4, 400, height);
    x += 1;
  } 
 //PANTALLA 1
 else if (pantalla == 1) {
   image(foto2, 0, 0, width, height);
  textSize(tamanoTexto);
    text("Debe luchar contra enemigos, buscar aliados y resolver misterios mientras asciende en una peregrinación mortal a la cima del reino.", 100, height / 4, 400, height);
    if (textoX < 500) textoX += 2;
    if (textoY < 300) textoY += 1;
    if (tamanoTexto < 30) tamanoTexto += 0.5;
  } 
  //PANTALLA 2
  else if (pantalla == 2) {
    image(foto3, 0, 0, width, height);
    textSize(tamanoTexto);
    text("Atada por su linaje y guiada por ecos de su pasado, Hornet se aventurará a través de grutas cubiertas de musgo, bosques de coral y ciudadelas brillantes para desentrañar un hilo mortal que amenaza esta nueva y extraña tierra.", texto2X, texto2Y, 370, 650);
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
    text("Hornet debe dominar un conjunto completamente nuevo de movimientos poderosos para sobrevivir. Desatará ataques devastadores, aprenderá increíbles habilidades de seda y fabricará herramientas mortales para superar los desafíos del reino.", text4X, text4Y, 400, height - text4Y);
    if (text4Y < height / 2) {
      text4Y += velocidadTexto4;
      if (text4Y > height / 2) text4Y = height / 2;
    }
  } 
  //PANTALLA 4
  else if (pantalla == 4) {
    image(foto5, 0, 0, width, height);
    if (cantidadParpadeos < 4 &&
    millis() - ultimoCambio > intervaloParpadeo) {

  visible = !visible;
  ultimoCambio = millis();

  cantidadParpadeos++;
    }
    if (visible) {
      text("Más de 200 enemigos feroces se interponen entre Hornet y la brillante ciudadela que corona el reino. Bestias y cazadores, asesinos y reyes, monstruos y caballeros: ¡Hornet debe enfrentarlos a todos con valentía y habilidad!", 100, height / 4, 400, height);
    }
  }

  // PANTALLA 5
  else if (pantalla == 5) {
    image(foto6, 0, 0, width, height);
    text("El vasto mundo interconectado de Hollow Knight: Silksong cobra vida vívidamente en un estilo 2D tradicional hecho a mano. Ciudades doradas, lagos de fuego y páramos brumosos están ilustrados con exquisito detalle, todo ello acompañado de una vibrante partitura orquestal.", reboteX, height / 4, 400, height);
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
    text("En su búsqueda de la verdad detrás de su captura, Hornet se hará amiga de extraños sorprendentes, descubrirá secretos impactantes y resolverá misterios antiguos en un reino embrujado lleno de maravillas.", 100, height / 4, 500, height);
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
    textSize(25);
    text("Fin de la presentación, gracias por ver.", 100, height / 4, 400, height);
    fill(200);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(0);
    textSize(18);
    text("Reiniciar", 540, 430);
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
