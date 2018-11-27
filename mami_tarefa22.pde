PImage img, img2;
float soma = 0, soma2 = 0, media1, media2, v1=0, v2=0;

void setup() {
  size(640, 480);
  img = loadImage("einstein2.jpg");
  img2 =  loadImage("cinza2.jpg");
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
  media1 = soma/(640.0*480.0); 
  media2 = soma2/(640.0*480.0);
  println(media1, media2);

  for (int x = 0; x < 640; x+=1) {
    for (int y = 0; y < 480; y+=1) {
      color cor = img.get(x, y);
      color cor2 = img2.get(x, y);
      float r = red(cor);
      float r2 = red(cor2);
      v1 += sq(r - media1);
      v2 += sq(r2 - media2);
      img.set(x, y, color(r, r, r));
    }
  }
  println(sqrt(v1/(640.0*480.0)), v2/(640.0*480.0));
}

void draw() {
  image(img, 0, 0);
}
