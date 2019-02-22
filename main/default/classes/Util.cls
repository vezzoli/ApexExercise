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


    public void educateKid(Kid k)
        {
            if(k.age < 3) 
            {
                System.debug('Play toys with the baby');
            }
            else if(k.age < 6)
            {
                System.debug('Teach some basic reading');
            }
            else if(k.age < 12)
            {
                System.debug('Let us learn some math.');
            }
            else if(k.age < 18)
            {
                System.debug('Teach some logical thinking');
            }
            else
            {
                System.debug('Focus on the professional stuffs');
            }
        }
        //...

    //aggiunta metodi per il merge di due sorted list
    public static List<Integer> mergeSortedLists(List<Integer> aList, List<Integer> bList)
    {
        List<Integer> mergedList = new List<Integer>();
         
        Integer aIndex = 0;
        Integer bIndex = 0;
         
        while (aIndex < aList.size() && bIndex < bList.size())
        {
            if(aList[aIndex] < bList[bIndex])
            {
                mergedList.add(aList[aIndex]);
                aIndex++;
            }
            else
            {
                mergedList.add(bList[bIndex]);
                bIndex++;
            }
        }
        //After this loop, the array with smaller greatest number will be all merged. But the other one is not. 
        //So we need to continue merge the rest of it. 
         
        if(aIndex < aList.size())
        {
            for(Integer i = aIndex; i < aList.size(); i++)
            {
                mergedList.add(aList[i]);
            }
        }
        else if(bIndex < bList.size())
        {
            for(Integer i = bIndex; i < bList.size(); i++)
            {
                mergedList.add(bList[i]);
            }
        }
         
        return mergedList;
    }
    //...


}