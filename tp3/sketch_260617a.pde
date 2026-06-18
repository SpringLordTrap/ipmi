//Thomas De Maio, Com 3, tp3, Legajo:126976/6
//https://youtu.be/9YGm2eSRIPc

PImage miFoto;
color colorFondo = color(255);

void setup(){
  miFoto = loadImage("27.jpg");
  size(800,400);
}

void draw(){
  background(colorFondo);
  
//esto lo hago para poder trabajar con valores de 400x400 y no tener que sumarle 400 píxeles a cada figura que realice
  translate(400,0);
  
//el pushMatrix acá es para comenzar a realizar las lineas desde el medio del espacio de trabajo (basicamente, reubicando el punto pivote)
  pushMatrix();
  
  
/*
  rotate(radians(45));
  stroke(0);
  strokeWeight(5);
*/
  
// esta funcion reinicia el contador en 0 en cada fotograma para que la alternancia entre horizontales y verticales sea fija
  int numeroDeLinea = 0;

//Ciclo FOR principal, lo que hace es generar las lineas diagonales
  for (int xOffset = -400; xOffset <= 500; xOffset += 53) {
// Usé coordenadas fijas para lograr un ángulo perfecto de 45 grados
  float x1 = xOffset;
  float y1 = 400;
  float x2 = xOffset+400;
  float y2 = 0;

//Este dist calcula la longitud de cada diagonal generada por el ciclo FOR
  float largoLinea = dist(x1, y1, x2, y2);
  
  if (largoLinea > 50) {
  stroke(0);
  strokeWeight(3.9);
  line(x1, y1, x2, y2);
  if (numeroDeLinea %2==0) {
  strokeWeight(4);

//For anidado, lo que hace es generar las espinas de las lineas en diagonal (las horizontales)
  for (int y = 0; y <= 400; y += 15) {
  float xEnDiagonal = x1 + (400 - y); 
  if (xEnDiagonal >= 0 && xEnDiagonal <= 400) {
  line(xEnDiagonal - 12, y, xEnDiagonal + 12, y); 
        }
      }
    } 
    
//For anidado, lo que hace es generar las espinas de las lineas en diagonal (las verticales)
   else {
   strokeWeight(3.1);
   for (int y = 0; y <= 400; y += 15) {
   float xEnDiagonal = x1 + (400 - y); 
   if (xEnDiagonal >= 0 && xEnDiagonal <= 400) {
   line(xEnDiagonal, y - 12, xEnDiagonal, y + 12);
    }
   }
  }
 numeroDeLinea++;
 }
}    
//la imagen la coloco aquí abajo para que sea la capa superior de todo el trabajo
  image(miFoto,-400,0,400,400);
  popMatrix();
}
//Acá la función donde, al apretar el mouse el color cambie de manera completamente random
  void mousePressed() {
  cambiarColorAleatorio(random(255), random(255), random(255));
}
//Acá la función que hace que, al apretar la tecla R se reinicie el color de fondo
  void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorFondo = color(255);
  }
}
void cambiarColorAleatorio(float r, float g, float b) {
  colorFondo = color(r, g, b);
}
