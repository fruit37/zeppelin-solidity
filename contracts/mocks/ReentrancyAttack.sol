pragma solidity ^0.4.21;


contract ReentrancyAttack {

  function callSender(bytes4 data) public {
    // solium-disable-next-line security/no-low-level-calls
    require(msg.sender.call(data));
  }

}
