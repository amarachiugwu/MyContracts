// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ContractB-imported.sol";

// contracts in diffrent files interact
// here ContractA access the function of ContractB by referenceing the inside of the function of ContractB "returnSomething()"
contract ContractA {
    address contractBAddress;
    
    function setContractBAddress(address _contractBAddress) external {
        contractBAddress = _contractBAddress;
    }
    
    function callContractB () external view returns(string memory){ 
        ContractB contractB = ContractB(contractBAddress);
        return contractB.returnSomething();
    }
}

