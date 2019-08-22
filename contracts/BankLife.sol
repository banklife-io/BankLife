pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

/**
 * @title BankLife
 * @dev Simple ERC20 Token example yielding 10000 tokens pre-assigned to its creator.
 */
contract BankLife is ERC20, ERC20Detailed {
    // modify token name
    string public constant NAME = "BankLife";
    // modify token symbol
    string public constant SYMBOL = "LIB";
    // modify token decimals
    uint8 public constant DECIMALS = 18;
    // modify initial token supply
    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(DECIMALS)); // 1000000000 tokens

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed(NAME, SYMBOL, DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
