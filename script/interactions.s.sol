// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {Script, console} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";
import {VRFCoordinatorV2Mock} from "@chainlink/contracts/src/v0.8/mocks/VRFCoordinatorV2Mock.sol";
contract CreateSubscription is Script{
    function createSubscriptionUsingConfig() public returns(uint64)
    {
        HelperConfig helperConfig = new HelperConfig();
        (, , address vrfCoordinator, , ,) = helperConfig.activeNetworkConfig();
        return createSubscription(vrfCoordinator);
    }    
    function createSubscription(address vrfCoordinator)public returns (uint64){
console.log("Creating subscription on ChainId: ", block.chainid);
        vm.startBroadcast();
        uint64 subId = VRFCoordinatorV2Mock(vrfCoordinator).createSubscription();
        vm.stopBroadcast();
        console.log("your sub id is: ", subId);
        return subId;
    }
    function run() external returns(uint64){
        return createSubscriptionUsingConfig();
    }
}
contract FundSubscription is Script{
    
}