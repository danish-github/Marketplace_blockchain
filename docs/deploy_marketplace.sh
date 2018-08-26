pragma solidity ^0.4.18;

contract Marketplace {
  //state variables
  address seller;
  address buyer;
  string name;
  string description;
  uint256 price;

//events
event LogSellArticle(
  address indexed _seller,
  string _name,
  uint256 price
);

event LogBuyArticle(
  address indexed _seller,
  address indexed _buyer,
  string _name,
  uint256 _price
);

function sellArticle(string _name,string _description, uint256 _price) public {
  seller = msg.sender;
  name = _name;
  description = _description;
  price = _price;

  LogSellArticle(seller,name,price);

  
}

function getArticle() public view returns(address , address, string ,string , uint256) {
  return(seller, buyer,name,description,price);
}
  
function buyArticle() payable public {
  // check whether article is for sale
  require(seller != 0x0);

  // check whether article has not been sold yet
  require(buyer == 0X0);

  // dont allow seller to buy his own article
  require(msg.sender != seller);

  // check that value sent corresponds to price of article
  require(msg.value == price);

  // keep buyer's information
  buyer= msg.sender;

  // buyer can pay the seller
  seller.transfer(msg.value);

  //trigger the event
  LogBuyArticle(seller,buyer,name,price);
}
}