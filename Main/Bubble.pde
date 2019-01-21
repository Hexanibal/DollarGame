class Bubble{

    private PVector pos;
    private int value = 0;
    private ArrayList<Bubble> linked;
    
    private int radius = 65;
    
    
    public Bubble(PVector pos, int value){
        this.pos = pos;
        this.value = value;
        linked = new ArrayList();
    }
    
    
    public void donate(){
         value -= linked.size();
         
         for(Bubble b : linked){
              b.receive();   
         }
         
         Main.game.addCoup();
    }
    
    
    public void receive(){
         value += 1;
    }
    
    public void display(){
        ellipseMode(RADIUS);
        stroke(20);
        strokeWeight(4);
        fill(70);
        ellipse(pos.x, pos.y, radius, radius);
        
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(50);
        text(value, pos.x, pos.y - 10);
        
    }
    
    public void link(Bubble b){
         linked.add(b);   
    }
    
    
    public void registerClick(PVector loc){
        PVector p = new PVector(loc.x - pos.x, loc.y - pos.y);
        
        if(sqrt(p.x * p.x + p.y * p.y) <= radius){
            donate();
        }
    }
    
    
    public PVector getLocation(){
      return this.pos;   
    }
    
    public int getValue(){
     return this.value;   
    }
    
}