const {
  loadFixture,
} = require("@nomicfoundation/hardhat-network-helpers");
const { anyValue } = require("@nomicfoundation/hardhat-chai-matchers/withArgs");
const { expect } = require("chai");

  describe("Contract works as defined", function () {

    it("Should set the right owner", async function () {
      const { sample, owner } = await loadFixture();

      expect(await sample.owner()).to.equal(owner.address);
    });

    it("Should receive and store the funds to Sample", async function () {
      const { sample, deposit } = await loadFixture(  
      );

      expect(await ethers.provider.getBalance(sample.address)).to.equal(
        deposit
      );
    });
    describe("Events", function () {
      it("Should emit an event ", async function () {
        const { sample,slab,filled } = await loadFixture();
        await expect(sample.levelOfSlab())
          .to.emit(sample,"true")
          .withArgs(slab,anyValue); 
      });
    });

});
