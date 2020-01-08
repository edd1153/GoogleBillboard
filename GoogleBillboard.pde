public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public double dNum;
public double num;
public void setup()  
{
  for (int i = 0; i <= e.length() - 10; i+= 10){
    String digits = e.substring(i, 10 + i);
    dNum = Double.parseDouble(digits);
    if (isPrime(dNum) == true){
      num++;
      if (num == 2){
        System.out.println(dNum);
      }
    }
  }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  double root = Math.sqrt(dNum);
  for (int i = 2; i <= root; i++){
   if ((dNum % i) == 0){
    return false;
   }
  }
  return true;
} 
