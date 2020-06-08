int posxt1=200;
int posyt1=175;
float anglet1=0;
int posxt2=175;
int posyt2=425;
float anglet2=0;
int posxt3=175;
int posyt3=600;
float anglet3=0;
int posxt4=1175;
int posyt4=125;
float anglet4=0;
int posxt5=1150;
int posyt5=275;
float anglet5=0;
int posxc=1150;
int posyc=450;
float anglec=0;
int posxt=1150;
int posyt=600;
float anglet=0;
boolean start=false;
boolean creative = false;
boolean howplay=false;
boolean levels=false;
boolean restart=false;
boolean rotaciont=false;
boolean transt1=false;
boolean transt2=false;
boolean transt3=false;
boolean transt4=false;
boolean transt5=false;
boolean transc=false;
boolean transt=false;
boolean primero = false;
boolean segundo = false;
boolean tercero = false;

PImage settings;
PImage facebook;
PImage instagram;
PImage github;
PImage home;
PImage silueta;
PImage completed;
PImage instrucciones;
PImage instrucciones2;
PImage mouse;

int negro = 0;
int negro2 = 0;

void restablecer() {
  posxt1=200;
  posyt1=175;
  anglet1=0;
  posxt2=175;
  posyt2=425;
  anglet2=0;
  posxt3=175;
  posyt3=600;
  anglet3=0;
  posxt4=1175;
  posyt4=125;
  anglet4=0;
  posxt5=1150;
  posyt5=275;
  anglet5=0;
  posxc=1150;
  posyc=450;
  anglec=0;
  posxt=1150;
  posyt=600;
  anglet=0;
}

void Triangulo1() {
  fill(250, 100, 0);      
  push();
  translate(posxt1, posyt1);
  rotate(anglet1);
  triangle(-75, -150, 75, 0, -75, 150);
  fill(200, 45, 65);
  pop();
  if ((get(mouseX, mouseY)==color(250, 100, 0)) && (!transt2) && (!transt3) && (!transt4) && (!transt5) && (!transc) && (!transt)) {
    if (mousePressed) {
      transt1 = true;
      posxt1=mouseX;
      posyt1=mouseY;
    } else {
      transt1 = false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(250, 100, 0))) {
      anglet1=anglet1+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(250, 100, 0))) {
      anglet1=anglet1-radians(5);
      delay(50);
    }
  }
}     

void Triangulo2() {
  fill(0, 130, 0);      
  push();
  translate(posxt2, posyt2);
  rotate(anglet2);
  triangle(-150, -75, 150, -75, 0, 75);
  fill(200, 45, 65);
  pop();
  if (get(mouseX, mouseY)==color(0, 130, 0)&& (!transt1) && (!transt3) && (!transt4) && (!transt5) && (!transc) && (!transt)) { 
    if (mousePressed) { 
      transt2=true;
      posxt2=mouseX;
      posyt2=mouseY;
    } else {
      transt2=false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 130, 0))) {
      anglet2=anglet2+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 130, 0))) {
      anglet2=anglet2-radians(5);
      delay(50);
    }
  }
}

void Triangulo3() {
  fill(130, 0, 0);      
  push();
  translate(posxt3, posyt3);
  rotate(anglet3);
  triangle(37.5, -75, 37.5, 75, -37.5, 0);
  fill(200, 45, 65);
  pop();
  if (get(mouseX, mouseY)==color(130, 0, 0) && (!transt2) && (!transt1) && (!transt4) && (!transt5) && (!transc) && (!transt)) {
    if (mousePressed) {  
      transt3=true;
      posxt3=mouseX;
      posyt3=mouseY;
    } else {
      transt3=false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(130, 0, 0))) {
      anglet3=anglet3+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(130, 0, 0))) {
      anglet3=anglet3-radians(5);
      delay(50);
    }
  }
}       

void Triangulo4() {
  fill(250, 20, 0);      
  push();
  translate(posxt4, posyt4);
  rotate(anglet4);
  triangle(37.5, -112.5, 37.5, 37.5, -112.5, 37.5);
  fill(200, 45, 65);
  pop();
  if ((get(mouseX, mouseY)==color(250, 20, 0)) && (!transt2) && (!transt3) && (!transt1) && (!transt5) && (!transc) && (!transt)) {
    if (mousePressed) {  
      transt4=true;
      posxt4=mouseX;
      posyt4=mouseY;
    } else {
      transt4=false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(250, 20, 0))) {
      anglet4=anglet4+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(250, 20, 0))) {
      anglet4=anglet4-radians(5);
      delay(50);
    }
  }
}

void Triangulo5() {
  fill(0, 0, 100);      
  push();
  translate(posxt5, posyt5);
  rotate(anglet5);
  triangle(-75, 37.5, 0, -37.5, 75, 37.5);
  fill(200, 45, 65);
  pop();
  if ((get(mouseX, mouseY)==color(0, 0, 100)) && (!transt2) && (!transt3) && (!transt4) && (!transt1) && (!transc) && (!transt)) {
    if (mousePressed) {  
      transt5=true;
      posxt5=mouseX;
      posyt5=mouseY;
    } else {
      transt5=false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 0, 100))) {
      anglet5=anglet5+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 0, 100))) {
      anglet5=anglet5-radians(5); 
      delay(50);
    }
  }
}

void Cuadrado() {
  fill(220, 220, 0);      
  push();
  translate(posxc, posyc);
  rotate(anglec);
  quad(-75, 0, 0, -75, 75, 0, 0, 75);
  fill(200, 45, 65);
  pop();
  if (get(mouseX, mouseY)==color(220, 220, 0) && (!transt2) && (!transt3) && (!transt4) && (!transt5) && (!transt1) && (!transt)) {
    if (mousePressed) {  
      transc=true;
      posxc=mouseX;
      posyc=mouseY;
    } else {
      transc=false;
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(220, 220, 0))) {
      anglec=anglec+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(220, 220, 0))) {
      anglec=anglec-radians(5);
      delay(50);
    }
  }
} 

void Trapecio() {
  if (rotaciont==false) {
    fill(0, 0, 155);      
    push();
    translate(posxt, posyt);
    rotate(anglet);
    quad(-112.5, 37.5, -37.5, -37.5, 112.5, -37.5, 37.5, 37.5);
    fill(200, 45, 65);
    pop();
  } else {
    fill(0, 0, 155);      
    push();
    translate(posxt, posyt);
    rotate(anglet);
    scale(-1, 1);
    quad(-112.5, 37.5, -37.5, -37.5, 112.5, -37.5, 37.5, 37.5);
    fill(200, 45, 65);
    pop();
  }    
  if ((get(mouseX, mouseY)==color(0, 0, 155))&& (!transt2) && (!transt3) && (!transt4) && (!transt5) && (!transc) && (!transt1)) {
    if (mousePressed) {  
      transt=true;
      posxt=mouseX;
      posyt=mouseY;
    } else {
      transt=false;
    }
    if ((keyCode==UP)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 0, 155))) { 
      rotaciont=!rotaciont;
      delay(50);
    }
    if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 0, 155))) {
      anglet=anglet+radians(5);
      delay(50);
    }
    if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==color(0, 0, 155))) {
      anglet=anglet-radians(5);
      delay(50);
    }
  }
}

void setup() {
  size(1300, 700);
  surface.setTitle("Tangram");
  surface.setResizable(true);
  surface.setLocation(0, 0);
  settings = loadImage("settings.png");
  facebook = loadImage("facebook.png");
  instagram = loadImage("instagram.png");
  github = loadImage("github.png");
  home = loadImage("home.png");
  silueta = loadImage("silueta.png");
  completed = loadImage("completed.png");
  instrucciones=loadImage("instrucciones.png");
  instrucciones2=loadImage("instrucciones2.png");
  mouse=loadImage("mouse.png");
}

void draw() {
  background(76, 0, 153);
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2-70)&&(mouseY<height/2-30)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    levels=true;
  }  
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2-20)&&(mouseY<height/2+20)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    creative = true;
  }
  if ((mouseX>width/2-100)&&(mouseX<width/2+120)&&(mouseY>height/2+30)&&(mouseY<height/2+70)&&(!start)&& (!howplay)&& (!creative) &&mousePressed) {
    howplay=true;
  }  
  if ((!start)&&(!howplay)&&(!creative)&&(!levels)) {
    stroke(250);
    fill(250, 100, 0);
    triangle(width/2-250, height/2-250, width/2, height/2, width/2-250, height/2+250);//Izquierda
    fill(0, 130, 0);
    triangle(width/2-250, height/2-250, width/2+250, height/2-250, width/2, height/2);//Arriba
    fill(130, 0, 0);
    triangle(width/2+250, height/2-250, width/2+250, height/2, width/2+125, height/2-125);//Derecha superior
    fill(250, 20, 0);
    triangle(width/2+250, height/2, width/2+250, height/2+250, width/2, height/2+250); //Derecha inferior
    fill(0, 0, 100);
    triangle(width/2-125, height/2+125, width/2, height/2, width/2+125, height/2+125);//Centro
    fill(220, 220, 0);
    quad(width/2, height/2, width/2+125, height/2-125, width/2+250, height/2, width/2+125, height/2+125);//Derecha centro
    fill(0, 0, 155);
    quad(width/2-250, height/2+250, width/2-125, height/2+125, width/2+125, height/2+125, width/2, height/2+250);//Izquierda inferior

    fill(250);
    rect(width/2-100, height/2-70, 220, 40, 20, 20, 20, 20);
    textSize(25);
    fill(0);
    text("CLICK TO START", width/2-90, height/2-40);

    fill(250);
    rect(width/2-100, height/2-20, 220, 40, 20, 20, 20, 20);
    textSize(25);
    fill(0);
    text("CREATIVE MODE", width/2-90, height/2+10); 

    fill(250);
    rect(width/2-100, height/2+30, 220, 40, 20, 20, 20, 20);
    textSize(25);
    fill(0);
    text("HOW TO PLAY", width/2-75, height/2+60);

    textSize(90);
    fill(220, 220, 0);  
    text("TANGRAM", width/3, height/8);


    fill(250);
    rect(width/2+440, height/2+300, 40, 40, 20, 20, 20, 20);
    image(settings, width/2+442, height/2+302, 36, 36);

    fill(250);
    rect(width/2+490, height/2+300, 40, 40, 20, 20, 20, 20);
    image(facebook, width/2+491, height/2+301, 39, 39);

    fill(250);
    rect(width/2+540, height/2+300, 40, 40, 20, 20, 20, 20);
    image(instagram, width/2+543, height/2+303, 34, 34);

    fill(250);
    rect(width/2+590, height/2+300, 40, 40, 20, 20, 20, 20);
    image(github, width/2+591, height/2+301, 40, 40);
  }
  if ((levels)&&(!start)&& (!howplay)&& (!creative)) {
    textSize(90);
    fill(220, 220, 0);  
    text("Levels", width/3+100, height/8);
    fill(250);
    rect(50, 100, 75, 75, 20, 20, 20, 20);
    textSize(50);
    fill(0);
    text("1", 70, 155);
    fill(250);
    rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
    image(home, width/75 + 10, height/110, 37, 39);
    if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
      levels = false;
    }

    if ((mouseX > 50) && (mouseX < 125) && (mouseY > 100) && (mouseY < 175) &&(!start) && (!howplay)&& (!creative)&&(levels)&& (mousePressed)) {
      levels=false;
      start=true;
    }
  }
  if ((start) && (!howplay)&& (!creative)&&(!levels)) {
    textSize(90);
    fill(220, 220, 0);
    text("Level 1", 700, height/8);
    
    if (!tercero) {
      restablecer();
      tercero = true;
    }

    fill(250);
    rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
    image(home, width/75 + 10, height/110, 37, 39);

    fill(250);
    rect(width/2+590, height/110, 40, 40, 20, 20, 20, 20);
    image(settings, width/2+593, height/110 + 3, 34, 34);

    if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
      start = false;
      tercero = false;
    }

    image(silueta, 240, 25, 415, 640);
    Triangulo1();
    Triangulo2();
    Triangulo3();
    Triangulo4();
    Triangulo5();
    Cuadrado();
    Trapecio();
    textSize(90);
    fill(220, 220, 0);

    if ((!mousePressed) && (!segundo)) {
      for (int i = 0; i < 416; i++) {
        for (int j = 0; j < 641; j++) {
          if (get(i + 240, j + 25) == color(0, 0, 0)) {
            negro2 += 1;
          }
        }
      }
      segundo = true;
    }
    if (mousePressed) {
      negro2 = 0;
      segundo = false;
    }
    if ((negro2 < 4000) && (negro2 > 0)) {
      textSize(90);
      fill(185, 124, 24);
      image(completed, width/2 - 300, height/2 - 100, 600, 200);
    }
  }



  if ((creative )  && (!start)&& (!howplay)&&(!levels)) {
    if (!primero) {
      restablecer();
      primero = true;
    }
    background(76, 0, 153);
    fill(250);
    rect(width/75, height/110, 55, 40, 20, 20, 20, 20);
    image(home, width/75 + 10, height/110, 37, 39);
    fill(250);
    rect(width/2+575, height/110, 60, 40, 20, 20, 20, 20);
    textSize(25);
    fill(0);
    text("Save", width/2+577.5, height/110+27.5);
    textSize(85);
    fill(220, 220, 0);
    text("Creative mode", width/3-55, height/8-20);

    Triangulo1();
    Triangulo2();
    Triangulo3();
    Triangulo4();
    Triangulo5();
    Cuadrado();
    Trapecio();    
    if ((mouseX > width/75) && (mouseX < 55) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)) {
      creative=false;
      primero = false;
    }
    if ((mouseX >width/2+575) && (mouseX <width/2+635) && (mouseY > height/110) && (mouseY < 40) && (mousePressed)&&(creative)  && (!start)&& (!howplay)&&(!levels)) {
      fill(0);
      rect(20, 20, 20, 20);
      //lkahdlaskddajdnksjnsajkdssadhgc dhjaskdsbhavgfdhbsjakdljnhuybgvtfcrdctvfygbunhjimokjinhuybgvtfcrdesctfvgybunhjimo,kmjinhuybgvtfcrdcvtfgybnhujimnhuybgvtfcrdxescvtfgybnhujimnhuybgv
      //intrucciones del save
      //alsdbsakjdbasdgksjaldfhdkjsahfjbdsnkahjbknasljlvnklcjbsakmsldnbgyvftcrdxsezwsxrdcvtfgyujnhioomjinhuyvbgtfcrdxescftvgujnhomjinhuyvbgftcrdexscvtfgybunhjimo,kmjinhuybgvftcrdxescvtfgybhunj
    }
  }
  if ((howplay ) && (!start)&& (!creative)&&(!levels)) {
    fill(200, 200, 200);
    rect(width/2-250, height/2-250, width/2-150, height/2+150);

    fill(70, 40, 170);
    rect(width/2+195, height/2-250, 55, 40, 20, 20, 20, 20);
    image(home, width/2+205, height/2-250, 37, 39);
    if ((mouseX > width/2+195) && (mouseX <width/2+235) && (mouseY > height/2-250) && (mouseY < height/2-210) && (mousePressed)) {
      howplay=false;
    }      

    textSize(25);
    fill(0);  
    text("■ Move the figures", width/2-245, height/2-180);
     image(mouse,width/2+100, height/2-180,88,88);    
    textSize(25);
    fill(0);  
    text("■ Rotate the figures", width/2-245, height/2-80);
    image(instrucciones,width/2+60, height/2-85,180,80);
    textSize(25);
    fill(0);  
    text("■ Special rotate (only trapeze)", width/2-245, height/2+20);
    image(instrucciones2,width/2+150, height/2+20,80,80);
    textSize(90);
    fill(220, 220, 0);  
    text("Instructions",  width/3-40, height/8-10);
  }
}
