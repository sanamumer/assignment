//SPDX-License-Identifier:UNLICENSED
pragma solidity 0.8.17;

contract Sample{
   uint256[5] slabs;

    struct Details{
        bool Isdeposited;
        uint slab;
        uint amount;
    }
    event levelOfSlab(uint slab,bool filled);
  
    mapping(address => Details)public DepoDetails;
    
    function Deposit(uint deposit)public payable returns(bool success){
    require(msg.value>0);
    if(msg.value == 1 ether){
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 0;
        DepoDetails[msg.sender].amount = deposit;
        emit levelOfSlab(0,true);
    }
    else if(msg.value == 2 ether){
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 1;
        DepoDetails[msg.sender].amount = deposit;
        emit levelOfSlab(1,true);
    }
    else if(msg.value == 3 ether){
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 2;
        DepoDetails[msg.sender].amount = deposit;
        emit levelOfSlab(2,true);
    }
    else if(msg.value == 4 ether){
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 3;
        DepoDetails[msg.sender].amount = deposit;
        emit levelOfSlab(3,true);
    }
    else if(msg.value == 5 ether)
    {
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 4;
        DepoDetails[msg.sender].amount = deposit;
        emit levelOfSlab(4,true);
    }
    else{
        return false;
    }

        }

}