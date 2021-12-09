pragma solidity >=0.7.0 <0.9.0;

contract Kudos {
    mapping (address => Kudo[]) allKudos; //we are here creating a dictionary where Kudo is a list which stores all the addresses.

    function giveKudos(address who, string memory what, address giver, string memory comments) public {
        Kudo memory kudo = Kudo(what, giver, comments);
        allKudos[who].push(kudo);
    }

}

//add get functionss

struct Kudo {
    string what;
    address giver;
    string comments;
}
