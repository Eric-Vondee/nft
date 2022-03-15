import { ethers } from "hardhat";

async function deployNft() {

    const address = "WALLET ADDRESS"
    const nft = await ethers.getContractFactory("ArcaneNFT");
    const tokenURI = "https://ipfs.io/ipfs/<ipfs json cid>";
    const deployNft = await nft.deploy();
    
    await deployNft.deployed();
    await deployNft.mintNFT(tokenURI, address);

    console.log("MY nft is deployed to:", nft.address);
}

deployNft()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });