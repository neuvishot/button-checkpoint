class button {
  float x, y, w, h;
  color norm, high;
  String text, pic;
  boolean clicked;
  PImage photo;

  // parameters for buttons, x, y, w, h, normal color, highlight, text display
  button(float xx, float yy, float ww, float hh, color norms, color highs, String Text, String pics) {
    x = xx;
    y = yy;
    w = ww;
    h = hh;
    norm = norms;
    high = highs;
    text = Text;
    fill(norm);
    pic = pics;
  }

  void words() {
    textAlign(CENTER, CENTER);
    textSize(w/4);
    if (touchMouse()) {
      fill(255);
    } else {
      fill(0);
    }
    text(text, x, y);
  }

  void pics() {
    imageMode(CENTER);
    photo = loadImage(pic);
    image(photo, x, y, w/2, h/2);

    if (pic == null) {
      println("no pic");
    }
  }


  boolean touchMouse() {
    if (mouseX > x-w/2 && mouseX < x + w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } else {
      return false;
    }
  }

  void clicked() {
    if (mouseReleased && touchMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }

    if (clicked) {
      background(norm);
    }
  }

  void show() {
    rectMode(CENTER);
    if (touchMouse()) {
      fill(high);
      stroke(255);
    } else {
      fill(norm);
      stroke(0);
    }
    strokeWeight(3);
    rect(x, y, w, h, h/6);
  }
}
