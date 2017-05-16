pragma solidity ^0.4.0;

contract HelloWorldContract {
    string word = "Hello World";
    address public issuer;
    
    function HelloWorldContract(){
       issuer = msg.sender; 
    }
    
    
    function getWord() constant returns(string) {
        return word;
    }
    
    function setWord(string newWord) returns(string) {
        if(issuer !=msg.sender){
            return "This is not the creator";
        }
        else{
            word = newWord;
            return "This is the creator!";
        }
       
    }
}