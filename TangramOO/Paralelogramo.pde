class Paralelogramo extends Figura {
  Paralelogramo(PVector _vector, float _angulo, color _col, float _m1, float _m2, float _m3, float _m4, float _m5, float _m6, float _m7, float _m8) {
    posicionx = _vector.x;
    posiciony = _vector.y;
    angulo = _angulo;
    col = _col;
    m1 = _m1;
    m2 = _m2;
    m3 = _m3;
    m4 = _m4;
    m5 = _m5;
    m6 = _m6;
    m7 = _m7;
    m8 = _m8;
  }

  void drawShape() {
    if (!rotaciont) {
      scale(-1, 1);
    } 
    quad(m1, m2, m3, m4, m5, m6, m7, m8);
  }
  void reflexion() {
    if ((keyCode==UP)&&(keyPressed)&&(get(mouseX, mouseY)==col)) { 
      rotaciont=!rotaciont;
      delay(50);
    }
  }
}
