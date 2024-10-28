            .text
            .globl binary2int
            .globl bit2int

binary2int: nop                             # public static int binary2int () {
            # v0: {return value}            # 
            # t0: $t0                       #     int number;
            # t1: $t1                       #     int digit;
            # t2: neg_one                   #     int neg_one;


            call bit2int                    #     digit   = bit2int();
            move $t0, $zero                 #     number  = 0;
            li $t2, -1                      #     neg_one = -1;
                          

init:       nop                             #      ;
loop:       beq $t1, $t2, done              #      for(; digit != neg_one ;) {

body:         nop                           #        ;
              sll $t0, $t0, 1               #        number = number << 1;
              add $t0, $t0, $t1             #        number = number + digit; 

next:         nop                           #        ;     
              call bit2int                  #        digit = bit2int();
              move $t1, $v0                 #      }

done:         nop                           #      ;
                                            # 
              move $v0, $t0                 #  return number;
              jr $ra
                                            #  }                                       # 




# // int bit2int();
# //         - reads an ASCII char
# //         - returns 
# //           * 0 if '0'
# //           * 1 if '1'
# //           * -1 otherwise
bit2int:    nop                             # public static int bit2int() {
                                            # 
                                            #     int value; 
                                            # 
                                            #     value = -1;
                                            # 
                                            #     mips.read_c();
                                            #     value = mips.retval();
                                            # 
                                            #     switch (value) {
                                            #        case 0:   mips.next("1");
                                            #                  value = 0;
                                            #                  break;
                                            #                  mips.merge("1");
                                            # 
                                            #        case 1:   mips.next("default");
                                            #                  value = 1;
                                            #                  break;
                                            #                  mips.merge("default");
                                            # 
                                            #        default:  mips.next();
                                            #                  value = -1;
                                            #                  break;
                                            #     }
                                            # 
                                            #     return value;
                                            # }

