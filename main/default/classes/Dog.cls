public class Dog {
    public Integer age;
    //public String name;
    private String name;
    //public String gender;
    private String gender;
    public String breed;
    public Boolean isPuppy;
    public static Integer dogCount = 0;

    //Last post's code here
    //...

    public Dog()
    {
        dogCount++;
    }

    public Dog(String name) 
    {
        this();
        this.name = name;
    }

    public Dog(String name, Integer age)
    {
        this(name);
        this.age = age;
    }

    public static void dogReport()
    {
        System.debug('There are currently ' + dogCount + ' dogs created');
    }

    public void bark()
    {
        System.debug('Woof, Woof!');
    }
     
    public void greeting()
    {
        System.debug('Hello, my name is ' + name);
    }

    public void greeting(String masterName)
    {
        System.debug('Hello ' + masterName + ', my name is ' + name);
    }
    //...
     
    public String retrieveDogInfo()
    {
        return 'Name: ' + name + '; Gender: ' + gender;
    }

    public void setGender(Boolean isMale)
    {
        if(isMale) 
        {
            gender = 'Male';
        }
        else
        {
            gender = 'Female';
        }
    }
 
    public String getGender()
    {
        return gender;
    }
}
