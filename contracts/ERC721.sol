// //SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ArcaneNFT  is ERC721URIStorage{ 
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Knight_deve", "ARC"){}

    function mintNFT(string memory baseURI, address _address) public returns(uint256){
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(_address, newItemId);
        _setTokenURI(newItemId, baseURI);

        return newItemId;
    }
}