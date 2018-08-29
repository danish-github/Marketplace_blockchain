## Smart-Contract Pattern

## Emergency stop.

If it is found that tested code contain bugs or defective code segments or they are used for an attack , often it is hard to fix, because immutability is one of the core principles of the blockchain.Keeping this in mind , we have implemented emergency stop design pattern.

Now to deactivate a smart contract we have made a solidity function called self-destruct in Marketplace.sol and it takes one argument an address when you call self-destruct function.
All the funds are still stored in the contract account if any are sent to the address passed as a parameter.
Once done , all the functions and state variables are rendered unavailable for future transactions.

As the call to self-destruct is very critical ,we made sure that it should not be called by anyone. In Ownable.sol , we only allow the contract owner to call the self-destruct function ie. the accounts that deployed the contract in the first place.