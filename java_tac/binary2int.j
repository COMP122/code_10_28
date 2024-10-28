

public static int binary2int () {

         int number;
         int digit;
         int neg_one;
     
         digit   = bit2int();
         number  = 0;
         neg_one = -1;


init:    ;
loop:    for(; digit != neg_one ;) {
body:      ;
           number = number << 1;
           number = number + digit; 
next:      ;     
           digit = bit2int();
         }
done:    ;

         return number;
}

// int bit2int();
//         - reads an ASCII char
//         - returns 
//           * 0 if '0'
//           * 1 if '1'
//           * -1 otherwise
public static int bit2int() {

    int value; 

    value = -1;

    mips.read_c();
    value = mips.retval();

    switch (value) {
       case 0:   mips.next("1");
                 value = 0;
                 break;
                 mips.merge("1");

       case 1:   mips.next("default");
                 value = 1;
                 break;
                 mips.merge("default");

       default:  mips.next();
                 value = -1;
                 break;
    }

    return value;
}

