Lottery Smart Contract
Overview
This repository contains a Solidity-based smart contract for a simple blockchain lottery system. The contract is designed for the Ethereum network and utilizes fundamental concepts of Solidity and Ethereum, such as ether transactions, randomness, and basic access control.

Features
Open Participation: Anyone with an Ethereum wallet can participate by sending a minimum amount of ether.
Ether Based: The lottery accepts Ethereum's native cryptocurrency, ether, as the betting currency.
Automated Winner Selection: Utilizes a pseudo-random number generation technique based on block timestamps and contract owner's address for selecting winners.
Repeated Usage: The contract supports multiple lottery rounds, each identified by a unique lottery ID.
Transparent Operations: The contract allows participants to view the total balance, list of players, and past winners.
Owner Privileges: Only the owner (deployer) of the contract can trigger the winner selection process.
How it Works
Entering the Lottery: Participants can enter the lottery by sending a transaction with a minimum amount of ether (0.01 ether) to the contract.
Selecting a Winner: Once enough participants have entered, the contract owner can call the pickWinner function, which uses a pseudo-random number to select a winner from the pool of players.
Transferring Prize: The entire balance of the contract is transferred to the winner's address, and the winner's address is recorded.
Resetting for Next Round: The player's list is reset, and the lottery ID is incremented for the next round.
Key Functions
enter(): Allows a user to enter the lottery by sending ether.
getBalance(): Returns the current balance of the contract (i.e., the total prize money).
getPlayers(): Returns a list of addresses of current players.
getWinner(): Returns a list of past winners.
getlotteryId(): Returns the current lottery ID.
pickWinner(): Randomly selects a winner from the pool of players. Only accessible by the contract owner.
Security Measures
Owner Restriction: Critical functions like selecting a winner are restricted to the contract owner.
Minimum Entry Fee: A minimum amount of ether is required to enter the lottery, preventing spam entries.
How to Deploy
Install a Solidity compiler and Ethereum development tools like Truffle or Hardhat.
Compile the contract using Solidity compiler.
Deploy the contract to the Ethereum network (either a testnet or the mainnet) using your Ethereum development environment.
How to Interact
Interacting with the contract can be done using Ethereum wallets like MetaMask, which allow users to send transactions to the contract.
Developers can interact programmatically using web3 libraries in JavaScript, Python, etc.
Disclaimer
The randomness mechanism in this contract is not cryptographically secure. It's suitable for educational and developmental purposes but not recommended for production-level applications with high-security requirements.
This project demonstrates my skills in Ethereum blockchain development, specifically in writing secure and efficient smart contracts using Solidity. It showcases practical applications of blockchain technology in creating decentralized applications.
