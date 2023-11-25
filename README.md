# MyToken Contract

The `MyToken` contract is a basic implementation of an ERC20 token on the Ethereum blockchain. It allows for the creation, minting, and burning of tokens.

## Features

- Token Name: The contract stores the name of the token.
- Token Abbreviation: The contract stores the abbreviation or symbol of the token.
- Total Supply: The contract tracks the total supply of tokens in circulation.
- Balances: The contract maintains a mapping of addresses to token balances.

## Deployment

To deploy the contract, follow these steps:

1. Choose an Ethereum development environment (e.g., Remix, Truffle).
2. Compile the `MyToken.sol` contract using a Solidity compiler version compatible with the contract code (e.g., Solidity 0.8.18).
3. Deploy the contract, providing the following parameters:
   - `tokenName`: The name of the token.
   - `tokenAbbrv`: The abbreviation or symbol of the token.
   - `totalSupply`: The initial total supply of tokens.

## Usage

Once deployed, you can interact with the `MyToken` contract using the following functions:

- `mint`: Mint new tokens and allocate them to a specific address.
  - Parameters:
    - `account`: The address to which the tokens will be allocated.
    - `value`: The amount of tokens to mint.
- `burn`: Burn (destroy) tokens from the sender's address.
  - Parameters:
    - `value`: The amount of tokens to burn.

## License

This contract is released under the MIT License. 
