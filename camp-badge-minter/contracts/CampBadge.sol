// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CampBadge is ERC1155, Ownable {
    uint256 public constant BADGE = 0;
    string public name = "Camp Builder Badge";
    string public symbol = "CBB";

    constructor(string memory uri) ERC1155(uri) {}

    function mintBadge() public {
        _mint(msg.sender, BADGE, 1, "");
    }

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }
}