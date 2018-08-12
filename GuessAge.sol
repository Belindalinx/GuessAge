pragma solidity ^0.4.24;

contract GuessAge{
    
    uint private myage;
    address private owner;
    
    constructor(uint age) public{
        myage = age;
        owner = msg.sender;
        
    }
    
    function makeGuess(uint age) public payable{
        require(owner != msg.sender && msg.value == 0.1 ether);
        
        if (age == myage){
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function returnBalance () view public returns(uint){
        return address(this).balance;
    }
    
}