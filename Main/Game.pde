class Game{
    
    private ArrayList<Bubble> bubbles;
    private ArrayList<Link> links;
    private int genus = 0;
    private int sum = 0;
    
    private int coups = 0;
    
    
    public Game(){
        Loads load = new Loads(2);
        
        bubbles = load.getBubbles();
        links = load.getLinks();
        genus = load.getGenus();
        sum = load.getSum();
    }


    private void update(){
        for(Link l : links){
              l.display();   
         } 
        
        for(Bubble b : bubbles){
              b.display();   
         }
         
        fill(255);
        textAlign(LEFT, TOP);
        textSize(30);
        text("coups : " + coups, 10, 10);
        
    }
    
    public void registerClick(PVector loc){
        for(Bubble b : bubbles){
             b.registerClick(loc);   
        }
    }
        
    public void addCoup(){
        coups++;
    }
    
}