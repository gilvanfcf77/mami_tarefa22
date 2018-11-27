PImage img, img2;
float soma = 0, soma2 = 0;

void setup() {
  size(640, 480);
  img = loadImage("einstein.jpg");
  img2 =  loadImage("cinza.jpg");
  for (int x = 0; x < 640; x+=1) {
    for (int y = 0; y < 480; y+=1) {
      color cor = img.get(x, y);
      color cor2 = img2.get(x, y);
      float r = red(cor);
      float r2 = red(cor2);
      soma+= r;
      soma2+= r2;
      img.set(x, y, color(r, r, r));
      
    }
  }
  println(soma/(640.0*480.0));
  println(soma2/(640.0*480.0));
}

void draw() {
  image(img, 0, 0);
}
