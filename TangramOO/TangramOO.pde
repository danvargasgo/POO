Figura triangulo0, triangulo1, triangulo2, triangulo3, triangulo4;
Figura cuadro, paralelo;

PVector v1, v2, v3, v4, v5, v6, v7;

PImage home, tangram, level1, completed, mouse, tr, tre;
PImage imagenes[] = new PImage[10];

boolean transt1, transt2, transt3, transt4, transt5, transc, transt;
boolean primero, segundo, start, creative, howplay, levels, save;
boolean trans[] = {transt1, transt2, transt3, transt4, transt5, transc, transt};

int jugar, cantidad = 1, comprobar;
int[] posicionesn = new int[10];


void setup() {
  size(1300, 700);
  surface.setTitle("Tangram");
  surface.setResizable(true);
  surface.setLocation(0, 0);
  restablecer();

  level1 = loadImage("level1.png"); 
  imagenes[0] = level1;
  home = loadImage("home.png");
  tangram = loadImage("tangram.png");
  completed = loadImage("completed.png");
  mouse = loadImage("mouse.png");
  tr= loadImage("tr.png");
  tre= loadImage("tre.png");
}

void draw() {
  background(76, 0, 153);

  if ((!start)&&(!howplay)&&(!creative)&&(!levels)) {
    funcionmenu();
  }
  if ((levels)&&(!start)&& (!howplay)&& (!creative)) {
    funcionlevels();
  }  
  if ((creative )  && (!start)&& (!howplay)&&(!levels)) {
    funcioncreative();
  }
  if ((howplay ) && (!start)&& (!creative)&&(!levels)) {
    funcionhowplay();
  }
  if ((!howplay ) && (start)&& (!creative)&&(!levels)) {
    funcionstart(jugar);
  }
}

void funcionmenu() {
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2-70)&&(mouseY<height/2-30)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    levels=true;
  }  
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2-20)&&(mouseY<height/2+20)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    creative = true;
  }
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2+30)&&(mouseY<height/2+70)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    howplay=true;
  }  

  image(tangram, width/2-250, height/2-235);

  fill(250);
  rect(width/2-100, height/2-70, 220, 40, 20, 20, 20, 20);
  rect(width/2-100, height/2-20, 220, 40, 20, 20, 20, 20);
  rect(width/2-100, height/2+30, 220, 40, 20, 20, 20, 20);
  textSize(25);
  fill(0);
  text("CLICK TO START", width/2-90, height/2-40);
  text("CREATIVE MODE", width/2-90, height/2+10); 
  text("HOW TO PLAY", width/2-75, height/2+60);
  textSize(90);
  fill(200, 220, 0);  
  text("TANGRAM", width/3, height/8);
}

void funcionlevels() {
  textSize(90);
  fill(200, 220, 0);  
  text("Levels", width/3+100, height/8);

  int w=0;
  int oh=100;
  int j=2;
  float p=77.5;
  int t=5;
  for (int i=0; i<cantidad; i++) {
    fill(250);
    if (i==9) {
      t=7;
    }
    if (i==18) {
      t=5;
    }
    if (i==27) {
      t=2;
    }
    if (i==36) {
      t=1;
    }
    if (w==9) {        
      w=w-9;        
      oh=oh+100;

      j=j+1;
      p=p+t;
    }     
    rect((w+1)*120, oh, 75, 75, 20, 20, 20, 20);
    textSize(50);
    fill(0);
    text((nf(i+1, 2)), ((w+1)*119)+10, p*j);      
    posicionesn[i] = (i+1)*120;
    w=w+1;
  }

  for (int i=0; i<cantidad; i++) {
    if (mouseX > posicionesn[i] && mouseX < posicionesn[i] + 100 && mouseY > 100 && mouseY < 175 && mousePressed) {
      start = true;
      levels = false;
      jugar = i;
    }
  }

  fill(250);
  rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
  image(home, width/75 + 10, height/110, 37, 39);

  if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
    levels = false;
  }
}

void funcioncreative() {
  if (!primero) {
    restablecer();
    primero = true;
  } 
  
  fill(255, 255, 255);
  rect(width/2+575, height/110, 60, 40, 20, 20, 20, 20);
  textSize(25);
  fill(1, 1, 1);
  text("Save", width/2+577.5, height/110+27.5);
  if (!save ) {
    fill(255, 255, 255);
    rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
    image(home, width/75 + 10, height/110, 37, 39);


    textSize(85);
    fill(200, 221, 0);
    text("Creative mode", width/3-55, height/8-20);
  }

  triangulo0.dibujar();
  triangulo1.dibujar();
  triangulo2.dibujar();
  triangulo3.dibujar();
  triangulo4.dibujar();
  cuadro.dibujar();
  paralelo.dibujar();   

  if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
    creative = false;
    primero = false;
  }
  if ((mouseX >width/2+575) && (mouseX <width/2+635) && (mouseY > height/110) && (mouseY < 40)) {
    save=true;
  } else {
    save=false;
  }
  if ((mouseX >width/2+575) && (mouseX <width/2+635) && (mouseY > height/110) && (mouseY < 40) && (mousePressed) && (creative) && (!start)&& (!howplay) && (!levels)) {  
    if (cantidad < 10) {        
      cantidad += 1;        
      save("/data/level"+ str(cantidad) + ".png");
      imagenes[cantidad-1] = loadImage("/data/level"+ str(cantidad) + ".png");
      imagenes[cantidad-1].loadPixels();
    }   
    for (int i=0; i<width*height; i++) {        
      if (imagenes[cantidad-1].pixels[i] != color(76, 0, 153) && imagenes[cantidad-1].pixels[i] != color(255, 255, 255) && imagenes[cantidad-1].pixels[i] != color(0, 0, 0) && imagenes[cantidad-1].pixels[i] != color(200, 221, 0) && imagenes[cantidad-1].pixels[i] != color(1, 1, 1)||imagenes[cantidad-1].pixels[i] == color(250)) {
        imagenes[cantidad-1].pixels[i] = color(0) ;
      }
      if (imagenes[cantidad-1].pixels[i] != color(0)) {
        imagenes[cantidad-1].pixels[i] = color(76, 0, 153);
      }
    }
    imagenes[cantidad-1].updatePixels();
  }
}


void funcionhowplay() {
  fill(200,200,200);
  stroke(0);
  rect(width/2-350, height/2-250, width/2+50, height/2+40);

  fill(76, 0, 153);
  rect(width/2+295, height/2-250, 55, 40, 20, 20, 20, 20);
  image(home, width/2+305, height/2-250, 37, 39);
  if ((mouseX > width/2+295) && (mouseX <width/2+335) && (mouseY > height/2-250) && (mouseY < height/2-210) && (mousePressed)) {
    howplay=false;
  }
  textSize(25);
  fill(0);  
  text("■ Move the figures", width/2-265, height/2-180);  
  text("■ Rotate the figures", width/2-265, height/2-80);
  text("■ Special rotate (only trapeze)", width/2-265, height/2+20);
  
  textSize(90);
  fill(220, 220, 0);  
  text("Instructions", width/3-40, height/8-10);
  image(mouse, width/2+125, height/2-230, 100, 100);
  image(tr, width/2+125, height/2-100, 100, 50);
  image(tre, width/2+145, height/2, 50, 50);
}

void funcionstart(int lvl) {
  if (!primero) {
    restablecer();
    primero = true;
  }
  if (lvl == 0) {
    image(imagenes[0], 240, 25, 415, 640);
  } else {
    image(imagenes[lvl], 0, 0);
    fill(76, 0, 153);
    stroke(76, 0, 153);
    rect(width/2+575, height/110, 60, 40);
  }
  textSize(90);
  fill(220, 220, 0);
  text("Level" + str((lvl+1)), 700, height/8);
  fill(250);
  rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
  image(home, width/75 + 10, height/110, 37, 39);

  triangulo0.dibujar();
  triangulo1.dibujar();
  triangulo2.dibujar();
  triangulo3.dibujar();
  triangulo4.dibujar();
  cuadro.dibujar();
  paralelo.dibujar();

  if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
    start = false;
    levels = true;
    primero = false;
  }

  if ((!mousePressed) && (!segundo)) {
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        if (get(i + 240, j + 25) == color(0, 0, 0)) {
          comprobar += 1;
        }
      }
    }
    segundo = true;
  }
  if (mousePressed) {
    comprobar = 0;
    segundo = false;
  }
  if ((comprobar < 4000) && (comprobar > 0)) {
    textSize(90);
    fill(185, 124, 24);
    image(completed, width/2 - 300, height/2 - 100, 600, 200);
  }
}

void restablecer() {
  triangulo0 = new Triangulo(v1 = new PVector(200, 175), 0, color(250, 100, 0), -75, -150, 75, 0, -75, 150);
  triangulo1 = new Triangulo(v2 = new PVector(175, 425), 0, color(0, 130, 0), -150, -75, 150, -75, 0, 75);
  triangulo2 = new Triangulo(v3 = new PVector(175, 600), 0, color(130, 0, 0), 37.5, -75, 37.5, 75, -37.5, 0);
  triangulo3 = new Triangulo(v4 = new PVector(1175, 125), 0, color(250, 20, 0), 37.5, -112.5, 37.5, 37.5, -112.5, 37.5);
  triangulo4 = new Triangulo(v5 = new PVector(1150, 275), 0, color(0, 0, 100), -75, 37.5, 0, -37.5, 75, 37.5);
  cuadro = new Cuadro(v6 = new PVector(1150, 450), 0, color(220, 220, 0), -75, 0, 0, -75, 75, 0, 0, 75);
  paralelo = new Paralelogramo(v7 = new PVector(1150, 600), 0, color(0, 0, 155), -112.5, 37.5, -37.5, -37.5, 112.5, -37.5, 37.5, 37.5);
}
