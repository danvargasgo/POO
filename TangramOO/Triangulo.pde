class Triangulo extends Figura {
  Triangulo(PVector _vector, float _angulo, color _col, float _m1, float _m2, float _m3, float _m4, float _m5, float _m6) {
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
  }

  void drawShape() {
    triangle(m1, m2, m3, m4, m5, m6);
  }
  void reflexion() {
  }
}
