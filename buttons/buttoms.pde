class button {
  float x, y, w, h;
  color norm, high;


  // parameters for buttons, x, y, w, h, normal color, highlight, text display
  button(float xx, float yy, float ww, float hh, color norms, color highs) {
    x = xx;
    y = yy;
    w = ww;
    h = hh;
    norm = norms;
    high = highs;
    fill(norm);
  }


  void act() {
  }

  void show() {
    rectMode(CENTER);
    rect(x, y, w, h, h/6);
    if (mouseX > x-w/2 && mouseX < x + w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(high);
    } else {
      fill(norm);
    }
  }
}
