int shapeType = 0; // 0 para elipse, 1 para cuadrado
color shapeColor;

void setup() {
  size(800, 600);
  shapeColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  
  if (shapeType == 0) {
    fill(shapeColor);
    ellipse(width/2, height/2, 200, 200);
  } else if (shapeType == 1) {
    fill(shapeColor);
    rect(width/2 - 100, height/2 - 100, 200, 200);
  }
}

void mouseClicked() {
  shapeColor = color(random(255), random(255), random(255));
  shapeType = (shapeType + 1) % 2; // Alterna entre 0 y 1
}
