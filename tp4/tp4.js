//PARA PROBAR ALGO NUEVO, AÑADÍ MÚSICA AL PROYECTO, PARA ESO ME GUIÉ DE ESTE TUTORIAL DE YOUTUBE: https://youtu.be/Pn1g1wjxl_0?si=4UIs76pXWro8EBND

let pantalla = 0;
let musicaMenu;
let musicaPersonaje;
let FFreddy = []; //Esto es la variable que voy a utilizar para llamar a las imagenes
let options = [">> start",">> exit","TEST DE \nPERSONAJE \nADVENTURE \nFREDDY"]; //Esto es para el menú y las opciones
let x = 80;
let y1 = 450;
let y2 = 550;
let indice = 0; //descubrí que debo poner este aqui arriba porque si lo ponia abajo contaba como si estuviera dentro de la function preload, y no sabia como arreglarlo, asi que lo puse acá arriba
function preload() { //esto se utiliza para crear el arraid de fotos, y cargar las fotos en general
  FFreddy[0] = loadImage("data/0001.png");
  FFreddy[1] = loadImage("data/0002.png");
  FFreddy[2] = loadImage("data/0003.png");
  FFreddy[3] = loadImage("data/0004.png");
  FFreddy[4] = loadImage("data/0005.png");
  FFreddy[5] = loadImage("data/0006.png");
  menu = loadImage("data/menu.jpg");
  fondo = loadImage("data/fondo.png");
  estatica = loadImage("data/estatica.jpg");
  musicaMenu = loadSound("data/fnafworld1.mp3");
  musicaPersonaje = loadSound("data/fnafworld.mp3");


}

function setup() {
  createCanvas(800,600);
}

function draw() {
 if(pantalla===0){
   dibujarMenu();
     } else if(pantalla===1){
       dibujarPersonaje();
     }
}

function dibujarMenu() {
  background(22);
  image(menu,0,0,800,600); //esta es la primera imagen, la del menú
  tint(255, 50); //tint es para cambiar la opacidad de la imagen de la estatica. El 255 es blanco, y el otro valor es la opacidad de la imagen
  image(estatica,0,0,800,600);
  noTint(); //esto es para que la opacidad no se baje en las siguientes fotos que vaya a usar
  
  fill(255);
  textSize(50);
  text(options[0],x,y1);
  text(options[1],x,y2);
  
  textSize(60);
  text(options[2],50,100);
  
  fill(255, 255, 0); 
  textSize(16);
  text("X: " + mouseX + " | Y: " + mouseY, mouseX + 10, mouseY - 10); //es una manera para poder ver en que coordenada estoy
  
}

 function dibujarPersonaje() {
  background(255);
  image(fondo, 0, 0, 800, 600);
  
  image(FFreddy[indice],10,15);
  if(frameCount % 10===0){
  indice++;
  }
  if(indice>=FFreddy.length){
    indice=0;
  }
    
  
}
  
  function mousePressed() {
    userStartAudio();
  if (pantalla === 0) {
    if (!musicaMenu.isPlaying()) {
      musicaMenu.loop();
    }
    if (mouseX >= 70 && mouseX <= 260 && mouseY >= 412 && mouseY <= 455) {
      musicaMenu.stop();
      musicaPersonaje.loop();
      pantalla = 1;
    }
  }
}
 
