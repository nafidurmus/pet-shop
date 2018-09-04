pragma solidity ^0.4.19;


import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

/**
 * The TestAdoption contract does this and that...
 */
contract TestAdoption {
	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	function testUserCanAdoptPet () public  {
		uint returnedId = adoption.adopt(8);

		uint expected = 8;

		Assert.equal(returnedId, expected, "Adoption of pet Id 8 should be recorded.");
		
	}

	function testGetAdopterAddressByPetId () public {

		address expected = this;

		address adopter = adoption.adopters(8);

		Assert.equal(adopter, expected , "Owner of pt ID 8 should be recorded.");
		
	}

	function testGetAdopterAddressByPetIdArray () public {

		address expected = this;

		address[16] memory adopters = adoption.getAdopters();

		Assert.equal(adopters[8], expected , "Owner of pet ID 8 sholud be recorded.");
		
	}
	
	
	
		
		
}

