

public static int binary2int () {

    int number;
    int digit;

    digit = bit2int();
    number=0;
    for(; digit != -1; ) {
      number = (number <<  1) + digit ; 
      digit = bit2int();
    }

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

    switch(value) {
      case '0': 
         value = 0;
         break;

      case '1': 
         value = 1;
         break;

      default:  
         value = -1;
         break;
    }
    return value;
}


public static int if_bit2int() {

    int value; 

    value = -1;

    mips.read_c();
    value = mips.retval();

    if ( value == '0')
       value = 0;
    else if (value == '1')
       value = 1;
    else
       value = -1;

    return value;
}

