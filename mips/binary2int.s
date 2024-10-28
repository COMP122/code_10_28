            .text
            .globl binary2int
            .globl bit2int
            .globl if_bit2int

            .include "include/stack.s"
            .include "include/syscalls.s"
            .include "include/subroutine.s"


binary2int: nop                  # public static int binary2int () {
            # a0: 
            # a1: 
            # a2: 
            # a3: 
            # v0: {return val}
            # t0: number         # int number;
            # t1: digit          # int digit;
            # t2: neg_one        # int neg_one;

                                 # number  = 0;
                                 # neg_one = -1;

init:       nop                  # ;
            call bit2int         # digit   = bit2int();
            move digit, $v0

loop:                            # for(; digit != neg_one; ) {
body:                            #   ;               
                                 #   number = (number <<  1);
                                 #   number = number + digit; 
next:                            #   ;              
                                 #   digit = bit2int();
                                 #   continue init;
                                 # }

                                 # return number;
                                 # }


// int bit2int();
//         - reads an ASCII char
//         - returns 
//           * 0 if '0'
//           * 1 if '1'
//           * -1 otherwise
bit2int:     nop                 # public static int bit2int() {

                                 # int value; 

                                 # value = -1;

                                 # mips.read_c();
                                 # value = mips.retval();

                                 # switch(value) {
                                 #   case '0': 
                                 #      value = 0;
                                 #      break;

                                 #   case '1': 
                                 #      value = 1;
                                 #      break;

                                 #   default:  
                                 #      value = -1;
                                 #      break;
                                 # }
                                 # return value;
                                 # }


if_bit2int:    nop               # public static int if_bit2int() {

                                 # int value; 

                                 # value = -1;

                                 # mips.read_c();
                                 # value = mips.retval();

                                 # if ( value == '0')
                                 #    value = 0;
                                 # else if (value == '1')
                                 #    value = 1;
                                 # else
                                 #    value = -1;

                                 # return value;
                                 # }

