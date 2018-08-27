# Marketplace

This Dapp is to buy /sell article using Ethereum accounts implemented using truffle box. Below mentioned are steps for installation and for runnning truffle tests.
The app uses metamask to authorise buy / sell transactions.

## Installation

1. Install npm package 

2. Install Truffle globally with below cmd in node.js cmd.

    npm install -g truffle
	
3. Download the project from below github link

	https://github.com/danish1987/Marketplace_blockchain

3. Go to the package.json path and run below cmd for depndencies installation.

	npm install

4. In node.js cmd , run below cmd and press enter to get ganache accounts.

	ganache-cli
	
5. Connect metamask to ganache cli by url http://127.0.0.1:8545 and import the private keys of accounts generated in ganache cli in metamask.

6. This project uses lite-server . Please go to package.json path and run below cmd to start lite-server.

        npm run dev 
	
7. Please note : If Dapp is being run in ubuntu , please rename truffle-config.js to truffle.js

## Test commands

1. Test command using truffle
	
   truffle test
   
2. Test command using ganache cli network

   truffle test --network ganache_cli
   
Test suite is written in javascript .

## Buy / sell article

1.  Deploy contracts to ganache_cli network using below cmd.

    truffle migrate --compile-all --reset --network ganache_cli
	
2. Select first account from meta mask and refresh the browser. Eth balance and account number will be updated in frontend for that account.

3. Click on sell article , enter details and click on submit . A metamask window will pop up asking for authorisation .Click on accept.
   An event will be triggered which will be visible in events tab.
   
4. Select second account from metamask. Refresh the browser . Eth balance and account number will be visible for this account in browser.
   Also , an article for sale will be visible . Click on buy article . Auhorise the transaction by metamask . Once confirmed, an event will be triggered and will be visible in events tab. 


	

	
