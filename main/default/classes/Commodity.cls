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
}