const { expect } = require("chai");
const { ethers } = require("hardhat");


describe("Sample contract testing", function () {

  beforeEach(async function() {
    const Sample = await ethers.getContractFactory("Sample")
    sample = await Sample.deploy()
    await sample.deployed()
    addressThis = sample.address
    
  })
it("Should should successfully deploy", async function () {
    console.log("success!")
  });

 it("Should let users transfer tokens to smart contract",async function(){
        await sample.Deposit(1);
        expect(await sample.balanceOf(addrress(this)));
  })
  
    it("Should assign a slab",async function(){
         await sample.Deposit(4);
         const res = await Details[msg.sender].slab(3);
         const slab = res.toString()
         expect(slab).to.equal("3")
         
    })
})
