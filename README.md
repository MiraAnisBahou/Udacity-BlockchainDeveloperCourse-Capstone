# Important Notes:

- In order to run my tests, open a terminal and start **ganache-cli**, then on another terminal make sure that you are in **capstone\blockchain-capstone\eth-contracts**, then type **truffle test**.

* In case you want to deploy my contract on the Rinkeby TestNetwork, make sure to put your Metamask mnemonic and infura key in the truffle-config.js file.

* In order to deploy my contracts on the Rinkeby Test Network, I used **truffle migrate --reset --network rinkeby**.

* **SolnSquareVerifier Contract Address:** 0xd66312317870A4861Eb86A7dCe959906ceDB9B95
* SolnSquareVerifier Contract Transaction Hash: 0x61445a56f25ec37b71c3aa253a874ccaf5091c5f035bb1814d075b9a2d504db5
* SquareVerifier Contract Address: 0x464681Dc97B393405c849b58cB6814bAaf77CFe3
* SquareVerifier Contract Transaction Hash: 0x44b292f5a47579239223d0ccb3c1e58b82724887d8f43b189ab7361edc0fd71b

* **SolnSquareVerifier Contract ABI:**
  [
  {
  "inputs": [
  {
  "internalType": "address",
  "name": "addrOfVerifier",
  "type": "address"
  }
  ],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "constructor"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": true,
  "internalType": "address",
  "name": "owner",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "address",
  "name": "approved",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "Approval",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": true,
  "internalType": "address",
  "name": "owner",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "address",
  "name": "operator",
  "type": "address"
  },
  {
  "indexed": false,
  "internalType": "bool",
  "name": "approved",
  "type": "bool"
  }
  ],
  "name": "ApprovalForAll",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": false,
  "internalType": "address",
  "name": "person",
  "type": "address"
  }
  ],
  "name": "Paused",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": true,
  "internalType": "address",
  "name": "from",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "Transfer",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": false,
  "internalType": "address",
  "name": "person",
  "type": "address"
  }
  ],
  "name": "Unpaused",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": true,
  "internalType": "address",
  "name": "oldOwnerAddress",
  "type": "address"
  },
  {
  "indexed": true,
  "internalType": "address",
  "name": "newOwnerAddress",
  "type": "address"
  }
  ],
  "name": "ownershipTransferred",
  "type": "event"
  },
  {
  "anonymous": false,
  "inputs": [
  {
  "indexed": false,
  "internalType": "address",
  "name": "from",
  "type": "address"
  },
  {
  "indexed": false,
  "internalType": "uint256",
  "name": "index1",
  "type": "uint256"
  }
  ],
  "name": "solutionAdded",
  "type": "event"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "bytes32",
  "name": "_myid",
  "type": "bytes32"
  },
  {
  "internalType": "string",
  "name": "_result",
  "type": "string"
  }
  ],
  "name": "**callback",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "bytes32",
  "name": "_myid",
  "type": "bytes32"
  },
  {
  "internalType": "string",
  "name": "_result",
  "type": "string"
  },
  {
  "internalType": "bytes",
  "name": "_proof",
  "type": "bytes"
  }
  ],
  "name": "**callback",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "approve",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "address",
  "name": "owner",
  "type": "address"
  }
  ],
  "name": "balanceOf",
  "outputs": [
  {
  "internalType": "uint256",
  "name": "",
  "type": "uint256"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "baseTokenURI",
  "outputs": [
  {
  "internalType": "string",
  "name": "",
  "type": "string"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "getApproved",
  "outputs": [
  {
  "internalType": "address",
  "name": "",
  "type": "address"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "address",
  "name": "owner",
  "type": "address"
  },
  {
  "internalType": "address",
  "name": "operator",
  "type": "address"
  }
  ],
  "name": "isApprovedForAll",
  "outputs": [
  {
  "internalType": "bool",
  "name": "",
  "type": "bool"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "mint",
  "outputs": [
  {
  "internalType": "bool",
  "name": "",
  "type": "bool"
  }
  ],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "name",
  "outputs": [
  {
  "internalType": "string",
  "name": "",
  "type": "string"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "owner",
  "outputs": [
  {
  "internalType": "address",
  "name": "",
  "type": "address"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "ownerOf",
  "outputs": [
  {
  "internalType": "address",
  "name": "",
  "type": "address"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "from",
  "type": "address"
  },
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "safeTransferFrom",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "from",
  "type": "address"
  },
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  },
  {
  "internalType": "bytes",
  "name": "_data",
  "type": "bytes"
  }
  ],
  "name": "safeTransferFrom",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "bool",
  "name": "approved",
  "type": "bool"
  }
  ],
  "name": "setApprovalForAll",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "bool",
  "name": "pause",
  "type": "bool"
  }
  ],
  "name": "setPaused",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "squareVerifier",
  "outputs": [
  {
  "internalType": "contract SquareVerifier",
  "name": "",
  "type": "address"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "bytes4",
  "name": "interfaceId",
  "type": "bytes4"
  }
  ],
  "name": "supportsInterface",
  "outputs": [
  {
  "internalType": "bool",
  "name": "",
  "type": "bool"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "symbol",
  "outputs": [
  {
  "internalType": "string",
  "name": "",
  "type": "string"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "uint256",
  "name": "index",
  "type": "uint256"
  }
  ],
  "name": "tokenByIndex",
  "outputs": [
  {
  "internalType": "uint256",
  "name": "",
  "type": "uint256"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "address",
  "name": "owner",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "index",
  "type": "uint256"
  }
  ],
  "name": "tokenOfOwnerByIndex",
  "outputs": [
  {
  "internalType": "uint256",
  "name": "",
  "type": "uint256"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "tokenURI",
  "outputs": [
  {
  "internalType": "string",
  "name": "",
  "type": "string"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "totalSupply",
  "outputs": [
  {
  "internalType": "uint256",
  "name": "",
  "type": "uint256"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "from",
  "type": "address"
  },
  {
  "internalType": "address",
  "name": "to",
  "type": "address"
  },
  {
  "internalType": "uint256",
  "name": "tokenId",
  "type": "uint256"
  }
  ],
  "name": "transferFrom",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "address",
  "name": "newOwner",
  "type": "address"
  }
  ],
  "name": "transferOwnership",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "uint256",
  "name": "index1",
  "type": "uint256"
  },
  {
  "internalType": "address",
  "name": "address1",
  "type": "address"
  },
  {
  "internalType": "uint256[2]",
  "name": "A",
  "type": "uint256[2]"
  },
  {
  "internalType": "uint256[2][2]",
  "name": "B",
  "type": "uint256[2][2]"
  },
  {
  "internalType": "uint256[2]",
  "name": "C",
  "type": "uint256[2]"
  },
  {
  "internalType": "uint256[2]",
  "name": "INPUT",
  "type": "uint256[2]"
  }
  ],
  "name": "addSolution",
  "outputs": [],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  },
  {
  "constant": true,
  "inputs": [],
  "name": "getSolutionsCount",
  "outputs": [
  {
  "internalType": "uint256",
  "name": "",
  "type": "uint256"
  }
  ],
  "payable": false,
  "stateMutability": "view",
  "type": "function"
  },
  {
  "constant": false,
  "inputs": [
  {
  "internalType": "uint256[2]",
  "name": "A",
  "type": "uint256[2]"
  },
  {
  "internalType": "uint256[2][2]",
  "name": "B",
  "type": "uint256[2][2]"
  },
  {
  "internalType": "uint256[2]",
  "name": "C",
  "type": "uint256[2]"
  },
  {
  "internalType": "uint256[2]",
  "name": "INPUT",
  "type": "uint256[2]"
  },
  {
  "internalType": "uint256",
  "name": "ID",
  "type": "uint256"
  }
  ],
  "name": "tokenMint",
  "outputs": [
  {
  "internalType": "bool",
  "name": "",
  "type": "bool"
  }
  ],
  "payable": false,
  "stateMutability": "nonpayable",
  "type": "function"
  }
  ]

## Tokens:

- After deploying the contracts on the Rinkeby TestNetwork, I used MyEtherWallet to mint 10 tokens, to mint tokens, I used the ABI and contract address of **SolnSquareVerifier Contract** that were listed above, I made sure to connect my MetaMask account with MyEtherWallet and OpenSea. Below are the transaction hashes and the links for the 10 tokens:

- **Original Owner of the tokens:** 0xB8DDbc2D6635dE3d2da292A9a4D59cb97D8458f6

* Original Owner Name on OpenSea: **mira**

* First Token:  
  **Transaction Hash:** 0xf87e79a1ea04859e763b02332134af6f628aa79e7ee68d7f8e13e82ef7dba337  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/1/

* Second Token:  
  **Transaction Hash:** 0xe338131f1f220165fe7a26e8b226f6ca3409adb432d16460177d0554b976f2fc  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/2/

* Third Token:  
  **Transaction Hash:** 0x3f04fb4fbfcac9907000031c288268fe7d4a28a5dbe736f007470a0dcb1a3f23  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/3/

* Fourth Token:  
  **Transaction Hash:** 0xb5f728a8b356fa513be8e611d98b4ebd9e56b1c150c3aa2492c950f71d790d91  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/4/

* Fifth Token:  
  **Transaction Hash:** 0xf47ebdb4c7bc435126df1f7200d3af4d88de6ea608657e1c06749fe93e51f708  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/5/

* Sixth Token:  
  **Transaction Hash:** 0xba298de69935e7f77751b202793c1a38de933f5f9e6381316e646c3d4253df1b  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/6/

* Seventh Token:  
  **Transaction Hash:** 0xd85b974aa79c9def74de6ba8b7fb4b59fb25e51a66ea0dcf3cd5cdcf77ac384b  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/7/

* Eighth Token:  
  **Transaction Hash:** 0x7bbc72a0e6f75cb8fe7f78de075a8c9c7249a05bf9b9506a6d0d311d87ba282d  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/8/

* Nineth Token:  
  **Transaction Hash:** 0x49a4b3b1d959e904ea917e09b8165d762e3f8c69dd593dcb7634bf1ab0c7663a  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/9/

* Tenth Token:  
  **Transaction Hash:** 0x3fb7a7552b316e014eec4106e3afc6998ba707ea321587642a44b94279eea3f5  
  **Link:** https://testnets.opensea.io/assets/0xd66312317870a4861eb86a7dce959906cedb9b95/10/

* After that, I put 5 tokens on sale; tokens with numbers 1, 3, 5, 7, 10 as shown in the screenshots below.  
<br />
  <img width="960" alt="forSale5" src="https://user-images.githubusercontent.com/72036379/100035338-976b3880-2e06-11eb-89e1-a45e3a68cdbd.PNG">  
  <img width="960" alt="5houses" src="https://user-images.githubusercontent.com/72036379/100035341-9a662900-2e06-11eb-9c1e-1d1de4ff7ea3.PNG">

* I then purchased the 5 tokens as required:  
  **Buyer Address:** 0x72F081DDA134C5D2Ed227Cb15c69F3AfcfB7c85F  
  Buyer Name on OpenSea: **mira2**  

Shown below is a screenshot of putting token 1 on sale and buying it afterwards (same procedure was followed to put the rest of the tokens on sale): 
<br />
mira putting it on sale: (mira is the owner in this stage)
<br />
<img width="960" alt="Sell" src="https://user-images.githubusercontent.com/72036379/100035086-098f4d80-2e06-11eb-8d43-30c92065b86e.PNG">  
<img width="960" alt="forSale" src="https://user-images.githubusercontent.com/72036379/100035097-10b65b80-2e06-11eb-8e7a-38f3d579aaeb.PNG">  
<img width="960" alt="forSale(cont'd)" src="https://user-images.githubusercontent.com/72036379/100035104-1744d300-2e06-11eb-8f4f-8f45f542c610.PNG"> 
mira2 purchasing it: (mira2 is now the owner)
<br />
<img width="959" alt="buy" src="https://user-images.githubusercontent.com/72036379/100035112-1dd34a80-2e06-11eb-90a7-fde5e7ad88c3.PNG">  
<img width="960" alt="buy2" src="https://user-images.githubusercontent.com/72036379/100035140-2cb9fd00-2e06-11eb-9074-29f62c8d9100.PNG">  
<img width="960" alt="buy3" src="https://user-images.githubusercontent.com/72036379/100035174-38a5bf00-2e06-11eb-9dc0-5650ac2413a7.PNG">  

- Below are the transaction hashes of the purchase of the 5 tokens:  
  Token 1 Purchase Transaction Hash: 0x6fa77c53bcda681e45e620e008125b4d46b62c4de3f06e1df786384fec9c7d6b  
  Token 3 Purchase Transaction Hash: 0xaed064c785c2702bf8b23cd3c5c47b845d2bbdeab6ee23f7937b7ddc4a9131a1  
  Token 5 Purchase Transaction Hash: 0xf69ef969102443ff25c797589093e39792efe6b2b3e02fc3394f42e5da3ace5a  
  Token 7 Purchase Transaction Hash: 0x3e684d4bafedcaa32917478621df70323c3725c73631d743ca53256dcce00094  
  Token 10 Purchase Transaction Hash: 0xe6adb915a27b75817eeee65ca9456a75fd00bbf57004299916dbf97c10fc712e  

Now, as can be seen, mira owns 5 tokens, and mira2 owns the rest (the 5 tokens that she purchased from mira):

* mira:  
<br />
  <img width="960" alt="miraa" src="https://user-images.githubusercontent.com/72036379/100035924-db127200-2e07-11eb-8357-ada72082b610.PNG">  
  <img width="960" alt="miraa(2)" src="https://user-images.githubusercontent.com/72036379/100035939-dfd72600-2e07-11eb-972a-5ec99d53c900.PNG"> 
 <br />
* mira2: 
<br />
  <img width="960" alt="mira2" src="https://user-images.githubusercontent.com/72036379/100035662-67706500-2e07-11eb-8821-48208d6bf3c5.PNG">  
  <img width="960" alt="mira2(2)" src="https://user-images.githubusercontent.com/72036379/100035667-6a6b5580-2e07-11eb-9d1c-34628f95c2cf.PNG">  

# Udacity Notes:

# Udacity Blockchain Capstone

The capstone will build upon the knowledge you have gained in the course in order to build a decentralized housing product.

# Project Resources

- [Remix - Solidity IDE](https://remix.ethereum.org/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Truffle Framework](https://truffleframework.com/)
- [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
- [Open Zeppelin ](https://openzeppelin.org/)
- [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
- [Docker](https://docs.docker.com/install/)
- [ZoKrates](https://github.com/Zokrates/ZoKrates)
