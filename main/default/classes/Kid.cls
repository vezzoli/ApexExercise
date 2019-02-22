public class Kid 
{
    private String name;
    private Boolean isMyKid;
    public Integer age;
     
    public Kid(String name, Boolean isMyKid)
    {
        this.name = name;
        this.isMyKid = isMyKid;
    }
     
    public void treatKid()
    {
        if(isMyKid) 
        {
            System.debug('Take ' + name + ' to Disneyland.');
        }
        else
        {
            System.debug('Give ' + name + ' some candy.');
        }
    }
}