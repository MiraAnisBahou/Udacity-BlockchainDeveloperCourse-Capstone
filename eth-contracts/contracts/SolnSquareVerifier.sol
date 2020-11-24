pragma solidity >=0.4.21 <0.6.0;

import "./verifier.sol";
import "./ERC721Mintable.sol";

// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
contract SquareVerifier is Verifier {
    // I checked 2_deploy_contracts.js and found that a contract called SquareVerifier will be deployed,
    // based on my understanding, the following contract needs to be put here and made this way.
}

// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class

contract SolnSquareVerifier is FinalERC721Token {
    // TODO define a solutions struct that can hold an index & an address

    struct solutions {
        uint256 index;
        address addressSol;
        uint256 solutionProvided; // If 1 --> means that the solution is already provided, if 0 --> means that solution is not yet provided
        // I created the solutionProvided to assist me in tracking if a solution is unique or no, if 1 the solution is NOT unique and if 0 solution IS unique
    }

    // TODO define an array of the above struct
    solutions[] solutionsArray;

    // Verifier squareVerifier;
    SquareVerifier public squareVerifier;

    // TODO define a mapping to store unique solutions submitted
    mapping(bytes32 => solutions) uniqueSolutions;
    // Based on my understanding and after researching and looking at YouTube videos that explain the project as well as
    // mentor answers, I understood that I need to use a hashing function (keccak256) of a,b,c and input
    // to show that the solution is unique

    // TODO Create an event to emit when a solution is added

    event solutionAdded(address from, uint256 index1);

    constructor(address addrOfVerifier) public {
        // I used the same concept used in app and data
        // squareVerifier = Verifier(addrOfVerifier);
        squareVerifier = SquareVerifier(addrOfVerifier);
    }

    // TODO Create a function to add the solutions to the array and emit the event
    function addSolution(
        uint256 index1,
        address address1,
        uint256[2] memory A,
        uint256[2][2] memory B,
        uint256[2] memory C,
        uint256[2] memory INPUT
    ) public {
        solutions memory Solution1 = solutions({
            index: index1,
            addressSol: address1,
            solutionProvided: 1
        });
        bytes32 uniqueKey = keccak256(abi.encodePacked(A, B, C, INPUT));
        uniqueSolutions[uniqueKey] = Solution1;
        solutionsArray.push(Solution1);
        emit solutionAdded(address1, index1);
    }

    // I made this function to assist me in testing to make sure that a solution was added
    function getSolutionsCount() public view returns (uint256) {
        return solutionsArray.length;
    }

    // TODO Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSuplly
    function tokenMint(
        uint256[2] memory A,
        uint256[2][2] memory B,
        uint256[2] memory C,
        uint256[2] memory INPUT,
        uint256 ID
    ) public returns (bool) {
        bytes32 uniqueKeyCheck = keccak256(abi.encodePacked(A, B, C, INPUT));
        require(
            uniqueSolutions[uniqueKeyCheck].solutionProvided == 0,
            "Solution used before!"
        );
        require(squareVerifier.verifyTx(A, B, C, INPUT), "Incorrect Solution!");
        addSolution(ID, msg.sender, A, B, C, INPUT);
        bool check = mint(msg.sender, ID);
        return check;
    }
}

// contract Verifier {
//     function verifyTx(
//         uint256[2] memory a,
//         uint256[2][2] memory b,
//         uint256[2] memory c,
//         uint256[2] memory input
//     ) public view returns (bool r);
// }
