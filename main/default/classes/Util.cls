public class Util 
{
    public void changeNumber(Decimal d)
    {
        d += 10;
    }
     
    public void changeString(String s) 
    {
        s = s + 'Hello';    
    }
     
    public void changeObject(Commodity c)
    {
        c.price += 20;
    }
}