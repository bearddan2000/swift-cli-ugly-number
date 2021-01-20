//swift 5.1.5
/*This function divides a by greatest
 divisible power of b*/
 func maxDivide(_ a:Int, _ b:Int) -> Int
 {
     var c = a
     while c % b == 0
     {
         c = c/b;
     }
     return c;
 }

 /* Function to check if a number
 is ugly or not */
 func isUgly(_ no:Int) -> Int
 {
     let a = maxDivide(no, 2);
     let b = maxDivide(a, 3);
     let c = maxDivide(b, 5);

     return (c == 1 ? 1 : 0);
 }

 /* Function to get the nth ugly
 number*/
 func getNthUglyNo(_ n:Int) -> Int
 {
     var i = 1;

     // ugly number count
     var count = 1;

     // check for all integers
     // until count becomes n
     while n > count
     {
         i+=1;
         if(isUgly(i) == 1)
         {
             count+=1;
         }
     }
     return i;
 }

func main() {
  let N = 15
  let output = getNthUglyNo(N);

  print("[INPUT] \(N)");
  print("[OUTPUT] \(output)");
}

main()
