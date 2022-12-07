//SPDX-License-Identifier:UNLICENSED
pragma solidity 0.8.17;

contract Sample{
   uint256[5] slabs;
    struct Slab{
        string slab_0;
        bool slab0_filled;
        string slab_1;
        bool slab1_filled;
        string slab_2;
        bool slab2_filled;
        string slab_3;
        bool slab3_filled;
        string slab_4;
        bool slab4_filled;
    }
    Slab slab;
    struct Details{
        bool Isdeposited;
        uint slab;
        uint amount;
    }
    event levelOfSlab(uint slab,bool filled);
    
    mapping(address => Details)public DepoDetails;

     constructor(){
        slab.slab_0 = '100';
        slab.slab_1 = '200';
        slab.slab_2 = '300';
        slab.slab_3 = '400';
        slab.slab_4 = '500';
    }
  
    function Deposit(uint deposit)public payable returns(bool success){
    require(msg.value>0);
    if(msg.value == 1 ether){
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 0;
        DepoDetails[msg.sender].amount = deposit;
        slab.slab0_filled = true;
        emit levelOfSlab(0,true);
    }
    else if(msg.value == 2 ether){
        require(slab.slab0_filled == true);
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 1;
        DepoDetails[msg.sender].amount = deposit;
         slab.slab1_filled = true;
        emit levelOfSlab(1,true);
    }
    else if(msg.value == 3 ether){
        require(slab.slab1_filled == true);
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 2;
        DepoDetails[msg.sender].amount = deposit;
         slab.slab2_filled = true;
        emit levelOfSlab(2,true);
    }
    else if(msg.value == 4 ether){
        require(slab.slab2_filled == true);
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 3;
        DepoDetails[msg.sender].amount = deposit;
         slab.slab3_filled = true;
        emit levelOfSlab(3,true);
    }
    else if(msg.value == 5 ether)
    {
        require(slab.slab3_filled == true);
        DepoDetails[msg.sender].Isdeposited = true;
        DepoDetails[msg.sender].slab = 4;
        DepoDetails[msg.sender].amount = deposit;
         slab.slab4_filled = true;
        emit levelOfSlab(4,true);
    }
    else{
        return false;
    }

        }

}
