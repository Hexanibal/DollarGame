class Link{
 
    private PVector p1, p2;
    
    public Link(PVector p1, PVector p2){
        this.p1 = p1;
        this.p2 = p2;
    }
    
    public void display(){
        stroke(20);
        strokeWeight(4);
        line(p1.x, p1.y, p2.x, p2.y);
    }
    
}