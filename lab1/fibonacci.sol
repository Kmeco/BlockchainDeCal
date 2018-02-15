pragma solidity ^0.4.0;

contract Fib {
    int public result;
    event test_value(int val);
    
    function Fib(int n) public {
        result = fibonacci(n);
        test_value(result);
    }
    
    function fibonacci(int n) public pure returns (int) {
        int a = 0;
        int b = 1;
        for (int k = 0; k < n; k++) {
            int c = b;
            b = a + b;
            a = c;
        }
        return a;
    }
}
