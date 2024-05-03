// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
contract voting_system{
    uint private p1;
    uint private  p2;

    mapping (address=>bool)public voted;
    function party_A() public {
        require(!voted[msg.sender], "You have already voted.");
        voted[msg.sender] = true;
        p1++;
    }
    function party_B() public {
        require(!voted[msg.sender], "You have already voted.");
        voted[msg.sender] = true;
        p2++;
    }
    function winner()public view returns(string memory) {
         if (p1 > p2) {
            return "Party A wins!";
        } else if (p2 > p1) {
            return "Party B wins!";
        } else {
            return "It's a tie!";
        }
    }

}