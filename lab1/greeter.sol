pragma solidity ^0.4.0;

contract greeter {
    string public message;
    
    event sendGreeting(string g);
    
    function greeter(string greeting) public {
        message = greeting;
        sendGreeting(message);
    }
}