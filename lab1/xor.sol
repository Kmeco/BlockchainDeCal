pragma solidity ^0.4.0;



contract XOR {
    

    int public k;
    

    event print(int z);
    

    function xor(int i, int j) public {

        if (i + j == 1) {

            k = 1;

            print(k);

        }

        else {
 
            k = 0;

             print(k);

        }

    }

}