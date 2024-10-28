               .text
               .globl binary2int
               .globl bit2int

               .include "include/stack.s"
               .include "include/syscalls.s"
               .include "include/subroutine.s"

binary2int:                      #  public static int binary2int () {
                                 #  
                                 #      int number;
                                 #      int digit;
                                 #  
                                 #      digit = bit2int();
                                 #      number=0;
                                 #      for(; digit != -1; ) {
                                 #        number = number * 2 + digit; 
                                 #        digit = bit2int();
                                 #      }
                                 #  
               move $v0, number  #      return number;
               jr $ra            #  }





                                 # // int bit2int();
                                 # //         - reads an ASCII char
                                 # //         - returns 
                                 # //           * 0 if '0'
                                 # //           * 1 if '1'
                                 # //           * -1 otherwise
bit2int:  nop                    # public static int bit2int() {
                                 # 
                                 #     int value; 
                                 # 
                                 #     value = -1;
                                 # 
                                 #     mips.read_c();
                                 #     value = mips.retval();
                                 # 
                                 #     if ( value == '0')
                                 #        value = 0;
                                 #     else if (value == '1')
                                 #        value = 1;
                                 #     else
                                 #        value = -1;
                                 # 
            move $v0, value      #     return value;
            jr $ra               # }

