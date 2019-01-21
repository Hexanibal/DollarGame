public static Game game;

void setup(){
    size(1300, 800);
    frameRate(60);

    game = new Game();
}

void draw(){
    background(40);
    game.update();
}


int count = 1;
void mousePressed(){
    game.registerClick(new PVector(mouseX, mouseY));
    
    //println("Bubble b" + count + " = new Bubble(new PVector(" + mouseX + ", " + mouseY + "), x);");
    //count++;
}