// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Lottery {
    address public owner;
    address payable[] public players;
    address[] public winners;
    uint256 public lotteryId;

    //Constructor - this runs when the contract is deployed
    constructor() {
        owner = msg.sender;
        lotteryId = 0;
    }

    // Enter Function
    // msg.sender -> currently logged in user to metamask
    // payable -> inseamna ca apeland aceasta functie cu paybale putem primi bani in contul contractului (fond comun)
    // fara payable nu putem accesa msg.value
    function enter() public payable {
        require(msg.value >= .01 ether);
        players.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        // address(this) -> means this specific contract address
        return address(this).balance;
    }

    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }

    function getWinner() public view returns (address[] memory) {
        return winners;
    }

    function getlotteryId() public view returns (uint256) {
        return lotteryId;
    }

    function getRandomNumber() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(owner, block.timestamp)));
    }

     function pickWinner() public onlyOwner  {
        // Modulo Operation (%): The modulo operator % is then used on this large number. It divides this number by players.length (the total number of players in the lottery) and returns the remainder of this division.
        // Result - randomIndex: The remainder, which is the result of the modulo operation, is a number between 0 and players.length - 1. This is because the remainder of any division by N (where N is a positive integer) is always less than N. This remainder is stored in uint randomIndex.
        uint randomIndex = getRandomNumber() % players.length;
        players[randomIndex].transfer(address(this).balance);
        winners.push(players[randomIndex]);
        lotteryId++;

        // Clear the players array. ['player1', 'player2'] 👉 []
        players = new address payable[](0);
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}
