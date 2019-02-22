public class Commodity 
{
    public Decimal price;
    public Decimal retrieveSalesTax(Decimal taxRate) 
    {
        return price * taxRate;
    }
     
    public Decimal retrieveTotalPrice(Decimal taxRate, Decimal additionalFee)
    {
        return price + retrieveSalesTax(taxRate) + additionalFee;
    }

    public Boolean purchaseDecision(Integer willingPower)
    {
        Decimal discountedPrice;
        if(price < 100) 
        {
            return true;
        }
        else
        {
            discountedPrice = price * 0.7;
             
            if(discountedPrice < 150 && willingPower > 3) 
            {
                return true;    
            }
            else if(discountedPrice < 300 && willingPower > 5)
            {
                return true;
            }
            else if(willingPower > 10) //No matter what, I want it
            {
                return true;
            }
            else
            {
                return false; 
            }
        }
    }
    //...
}