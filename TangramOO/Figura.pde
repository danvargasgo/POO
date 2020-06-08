abstract class Figura {
  float posicionx, posiciony, angulo;
  boolean  rotaciont, move;
  color col;
  float m1, m2, m3, m4, m5, m6, m7, m8;
  color colores[] = {color(250, 100, 0), color(0, 130, 0), color(130, 0, 0), color(250, 20, 0), color(0, 0, 100), color(220, 220, 0), color(0, 0, 155)};

  void dibujar() {
    push();
    stroke(250, 250, 250);
    translate(posicionx, posiciony);
    rotate(angulo);
    fill(col);
    drawShape();
    pop();

    if ((get(mouseX, mouseY)==col)) {
      for (int i=0; i<colores.length; i++) {
        if (colores[i] != col) {
          if (trans[i]) {
            move = true;
            break;
          } else {
            move = false;
          }
        }
      }
      if (!move) {  
        if (mousePressed) {
          for (int i=0; i<colores.length; i++) {
            if (colores[i] == col) {
              trans[i] = true;
            }
          }
          posicionx=mouseX;
          posiciony=mouseY;
        } else {
          for (int i=0; i<colores.length; i++) {
            if (colores[i] == col) {
              trans[i] = false;
            }
          }
        }
        if ((keyCode==RIGHT)&&(keyPressed)&&(get(mouseX, mouseY)==col)) {
          angulo = angulo+radians(5);
          delay(50);
        }
        if ((keyCode==LEFT)&&(keyPressed)&&(get(mouseX, mouseY)==col)) {
          angulo = angulo-radians(5);
          delay(50);
        }
        reflexion();
      }
    }
  }
  abstract void drawShape();
  abstract void reflexion();
}
