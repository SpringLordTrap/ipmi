PImage miFoto;

void setup(){
  miFoto = loadImage("1.jpg");
  size(800,400);
}

void draw(){
  background(255);

//esto lo hago para poder trabajar con valores de 400x400 y no tener que sumarle 400
//píxeles a cada figura que realice
  translate(400,0);
  
//fondo naranja
  noStroke();
  fill(#F0A00C);
  rect(0,200,400,200);
//lineas rojas
  fill(#B91313);
  stroke(#B91313);
  strokeWeight(5);
  line(0,275,400,275);
  line(0,340,400,340);
  line(360,200,360,400);
  line(280,200,280,400);
  line(200,200,200,400);
  line(120,200,120,400);
  line(40,200,40,400);
//fondo rojo
  noStroke();
  fill(#B91313);
  quad(0,20,60,150,300,225,0,350);
//fondo celeste
  fill(#13A2B9);
  quad(-10,0,60,0,120,140,60,150);
  quad(100,110,400,155,400,260,60,150);
//fondo gris
  fill(#C9D4D6);
  quad(50,0,105,0,140,117,107,112);
  quad(120,0,400,0,400,75,200,65);
  triangle(164,120,400,120,400,155);
//fondo amarillo
  fill(#EDE378);
  beginShape();
  vertex(95,0);
  vertex(125,0);
  vertex(180,80);
  vertex(400,105);
  vertex(400,120);
  vertex(130,123);
  endShape();
  
  
//el barco (lo que más miedo me da hacer del trabajo)
//parte inferior del barco
  fill(#ADADAD);
  beginShape();
  vertex(0,350);
  vertex(80,360);
  vertex(100,365);
  vertex(200,365);
  vertex(240,340);
  vertex(260,340);
  vertex(260,330);
  vertex(300,270);
  vertex(280,265);
  vertex(110,260);
  vertex(0,280);
  endShape();
  
//la cabina del barco, creo que es eso
  fill(#9D9D9D);
  beginShape();
  vertex(0,300);
  vertex(120,300);
  vertex(145,220);
  vertex(137,200);
  vertex(30,200);
  vertex(0,220);
  endShape();
  
//sombra de la cabina del barco
  fill(#292828);
  beginShape();
  vertex(0,300);
  vertex(120,300);
  vertex(145,220);
  vertex(137,200);
  vertex(100,200);
  vertex(110,220);
  vertex(90,225);
  vertex(70,300);
  endShape();
  
//caja blanca
  fill(#D8D8D8);
  beginShape();
  vertex(120,300);
  vertex(120,260);
  vertex(150,250);
  vertex(210,255);
  vertex(210,300);
  endShape();
  
//palos del barco que ni idea como se llaman
  fill(#080808);
  stroke(#080808);
  strokeWeight(4);
  line(185,300,185,75);
  line(290,270,175,75);
  line(0,230,30,145);
  line(60,210,25,145);
  line(20,147,40,140);
  noStroke();
//capa de sombra de la parte inferior del barco
  fill(#343232);
  beginShape();
  vertex(0,350);
  vertex(80,360);
  vertex(100,365);
  vertex(200,365);
  vertex(240,340);
  vertex(260,340);
  vertex(260,330);
  vertex(300,270);
  vertex(200,285);
  vertex(100,290);
  vertex(0,295);
  vertex(0,315);
  vertex(80,315);
  vertex(170,310);
  vertex(200,305);
  vertex(180,315);
  vertex(130,325);
  vertex(130,340);
  vertex(80,340);
  vertex(0,335);
  endShape();
  
//la imagen la coloco aquí abajo para que sea la capa superior de todo el trabajo
  image(miFoto,-400,0,400,400);
}
