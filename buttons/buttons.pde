// buttons checkpoint

button mybutton, hihi;
color red, pink;

void setup() {
  size(600, 600);
  red = #A03434;
  pink = #D87272;

  mybutton = new button(300, 300, 200, 150, red, pink);
  hihi = new button(100, 100, 75, 50, pink, red);
}

void draw() {

  mybutton.show();
  mybutton.act();
  
    hihi.show();
  hihi.act();
}
