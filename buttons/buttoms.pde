class button {
  float x, y, w, h;
  color norm, high;
  String text;
  boolean clicked;


  // parameters for buttons, x, y, w, h, normal color, highlight, text display
  button(float xx, float yy, float ww, float hh, color norms, color highs, String Text) {
    x = xx;
    y = yy;
    w = ww;
    h = hh;
    norm = norms;
    high = highs;
    text = Text;
    fill(norm);
  }


  void clicked() {
    if (mouseReleased && mouseX > x-w/2 && mouseX < x + w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
    
    if (clicked){
     background(norm); 
    }
  }

  void show() {
    rectMode(CENTER);
    if (mouseX > x-w/2 && mouseX < x + w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(high);
      stroke(255);
    } else {
      fill(norm);
      stroke(0);
    }
    strokeWeight(3);
    rect(x, y, w, h, h/6);
    textAlign(CENTER, CENTER);
    textSize(w/4);

    if (mouseX > x-w/2 && mouseX < x + w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(255);
    } else {
      fill(0);
    }
    text(text, x, y);
  }
}
