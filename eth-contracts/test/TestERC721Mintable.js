var ERC721MintableComplete = artifacts.require("FinalERC721Token");

contract("TestERC721Mintable", (accounts) => {
  const account_one = accounts[0];
  const account_two = accounts[1];

  describe("match erc721 spec", function () {
    beforeEach(async function () {
      this.contract = await ERC721MintableComplete.new({ from: account_one });

      // TODO: mint multiple tokens
      await this.contract.mint(account_two, 3, {
        from: account_one,
      });
      await this.contract.mint(account_two, 4, {
        from: account_one,
      });
      await this.contract.mint(account_two, 5, {
        from: account_one,
      });
      await this.contract.mint(account_one, 7, {
        from: account_one,
      });
      await this.contract.mint(account_one, 10, {
        from: account_one,
      });
    });

    it("should return total supply", async function () {
      let result = await this.contract.totalSupply.call();
      assert.equal(result, 5, "Tokens present not as expected!");
    });

    it("should get token balance", async function () {
      let result2 = await this.contract.balanceOf.call(account_two, {
        from: account_two,
      });
      assert.equal(
        result2,
        3,
        "Tokens balance of this account is not as expected!"
      );
    });

    // token uri should be complete i.e: https://s3-us-west-2.amazonaws.com/udacity-blockchain/capstone/1
    it("should return token uri", async function () {
      let result3 = await this.contract.tokenURI.call(3, { from: account_two });
      assert.equal(
        result3,
        "https://s3-us-west-2.amazonaws.com/udacity-blockchain/capstone/3",
        "Tokens URI is not as expected!"
      );
    });

    it("should transfer token from one owner to another", async function () {
      // Transfer ownership of token with ID from account_two to account_one
      await this.contract.transferFrom(account_two, account_one, 3, {
        from: account_two,
      });
      let result4 = await this.contract.ownerOf.call(3, { from: account_one });
      // Or we can check the number of tokens owned now by account_one, they should be 3 instead of 2
      // let result4 = await this.contract.balanceOf.call(account_one, {
      //     from: account_one,
      //   });
      //   assert.equal(
      //     result4,
      //     3,
      //     "Tokens balance of this account is not as expected!"
      //   );
      assert.equal(result4, account_one, "This is not the owner of the token!");
    });

    describe("have ownership properties", function () {
      beforeEach(async function () {
        this.contract = await ERC721MintableComplete.new({ from: account_one });
      });

      it("should fail when minting when address is not contract owner", async function () {
        let error;
        try {
          await this.contract.mint.call(account_two, 13, { from: account_two });
        } catch (e) {
          error = e;
          console.log(e);
        }
        // I could have used this function if it is accessible from here
        //     let result5 = await this.contract._exists.call(13, {
        //       from: account_two,
        //     });
        //     assert.equal(result5, false, "It seems that the token exists!");
        assert(error, "Something wrong occured!");
      });

      it("should return contract owner", async function () {
        let result6 = await this.contract.owner.call({
          from: account_two,
        });
        assert.equal(
          result6,
          account_one,
          "The contract has a different owner!"
        );
      });
    });
  });
});
