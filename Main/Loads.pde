class Loads{
 
    private ArrayList<Bubble> bubbles;
    private ArrayList<Link> links;
    private int genus = 0;
    private int sum = 0;
    
    
    public Loads(int l){
        bubbles = new ArrayList();
        links = new ArrayList();
        
        switch (l){
            case 0:
                load0();
            break;
            case 1:
                load1();
            break;
            case 2:
                load2();
            break;
            case 3:
                load3();
            break;
            case 4:
                load4();
            break;
        }
        
        
        genus = links.size() - bubbles.size() + 1;
        
        for(Bubble b : bubbles){
             sum += b.getValue();   
        }
    }
    
    
    private void link(Bubble b1, Bubble b2){
        links.add(new Link(b1.getLocation(), b2.getLocation()));
        b1.link(b2);
        b2.link(b1);
    }
    
    public ArrayList<Bubble> getBubbles(){
         return bubbles;   
    }
    
    public ArrayList<Link> getLinks(){
         return links;   
    }
    
    public int getGenus(){
         println(genus);
         return genus;   
    }
    
     public int getSum(){
         println(sum);
         return sum;   
    }
    
    
    /*=========================================*/
    
    private void load0(){

    }
    
    private void load1(){
        Bubble b1 = new Bubble(new PVector(250, 150), 2);
        Bubble b2 = new Bubble(new PVector(1100, 150), -3);
        Bubble b3 = new Bubble(new PVector(680, 320), 4);
        Bubble b4 = new Bubble(new PVector(420, 500), 2);
        Bubble b5 = new Bubble(new PVector(200, 700), -2);
        Bubble b6 = new Bubble(new PVector(1000, 650), 1);
        
        bubbles.add(b1);
        bubbles.add(b2);
        bubbles.add(b3);
        bubbles.add(b4);
        bubbles.add(b5);
        bubbles.add(b6);
        
        link(b1, b2);
        link(b1, b3);
        link(b1, b5);
        link(b2, b3);
        link(b3, b6);
        link(b3, b4);
        link(b4, b5);
        link(b5, b6);
    }
    
    private void load2(){
        Bubble b1 = new Bubble(new PVector(365, 138), -2);
        Bubble b2 = new Bubble(new PVector(989, 133), 3);
        Bubble b3 = new Bubble(new PVector(614, 300), 4);
        Bubble b4 = new Bubble(new PVector(364, 589), -1);
        Bubble b5 = new Bubble(new PVector(1005, 608), -2);

        bubbles.add(b1);
        bubbles.add(b2);
        bubbles.add(b3);
        bubbles.add(b4);
        bubbles.add(b5);
        
        link(b1, b3);
        link(b1, b4);
        link(b2, b5);
        link(b3, b4);
        link(b3, b5);
        link(b4, b5);
    }
    
    public void load3(){
        Bubble b1 = new Bubble(new PVector(661, 102), 1);
        Bubble b2 = new Bubble(new PVector(233, 234), 3);
        Bubble b3 = new Bubble(new PVector(1047, 220), -2);
        Bubble b4 = new Bubble(new PVector(590, 418), -3);
        Bubble b5 = new Bubble(new PVector(323, 673), 5);
        Bubble b6 = new Bubble(new PVector(935, 694), -1);

        bubbles.add(b1);
        bubbles.add(b2);
        bubbles.add(b3);
        bubbles.add(b4);
        bubbles.add(b5);
        bubbles.add(b6);
        
        link(b1, b2);
        link(b1, b3);
        link(b2, b4);
        link(b2, b5);
        link(b3, b4);
        link(b3, b6);
        link(b4, b5);
        link(b4, b6);
    }
    
    public void load4(){
        
    }
}