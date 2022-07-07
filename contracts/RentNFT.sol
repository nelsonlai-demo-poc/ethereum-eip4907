//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./eips/ERC4907.sol";

contract RentNFT is ERC4907 {
    uint256 nextTokenId = 0;

    constructor() ERC4907("RentNFT", "RentNFT") {}

    function mint() external {
        _safeMint(msg.sender, nextTokenId);
        nextTokenId++;
    }
}
