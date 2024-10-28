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

    if ( value == '0')
       value = 0;
    else if (value == '1')
       value = 1;
    else
       value = -1;

    return value;
}