If you find any issues in running the below Dapp , please contact me on er_danish@ymail.com and I will reply asap ...Cheers !!

## Project Description

Marketplace
This Dapp is a online marketplace where people can buy /sell article using Ethereum accounts. This has been implemented using truffle box. Below mentioned are steps for installation and for runnning truffle tests. The app uses metamask to authorise buy / sell transactions.

## Project architecture

This project uses truffle , ganache GUI / ganache cli and lite-server. Authorisation is done by metamask. 
Project uses two sol file 
    1.  Migrations.sol - for keeping track of migrations.
    2.  Marketplace.sol - application logic sol file.

## Installation

Please note : If Dapp is being run in ubuntu , please rename truffle-config.js to truffle.js

Install npm package

Install Truffle globally with below cmd in node.js cmd.

   npm install -g truffle

Download the project from below github link

   https://github.com/danish1987/Marketplace_blockchain

Go to the path package.json and run below cmd for depndencies installation.

   npm install

You can use ganache GUI or ganache cli to run this project .
For ganache cli , in node.js cmd , run below cmd and press enter to get ganache accounts.

  ganache-cli

For ganache gui , start the ganache gui.Download and install ganache gui from below link if not present.
   https://truffleframework.com/ganache.

Enable metamask in your browser . Below is the link for metemask installation if not present.
   https://medium.com/@followcoin/how-to-install-metamask-88cbdabc1d28

Connect metamask to ganache cli on url http://127.0.0.1:8545 or to ganache gui on url http://127.0.0.1:7545   and import the private keys of accounts generated in ganache cli/ gui in metamask.

This project uses lite-server . Please go to package.json path and run below cmd to start lite-server.

   npm run dev

A browser for the Dapp will be launched at http://localhost:3000 

## Test commands

Test command using truffle

   truffle test

For deploying contracts in ganache gui (port 7545) , use below cmd.

   truffle migrate --compile-all --reset --network ganache

For deploying contracts in ganache cli (port 8545) , use below cmd.

   truffle migrate --compile-all --reset --network ganache_cli

Test suite is written in javascript .

## How it works ?

1.  As soon as browser launches at http://localhost:3000 , ether balance for first account and address will be visible on first screen .
2.  Select sell an article, enter the details and click on submit.
3.  Metamask window will pop up for transaction authorisation . Click on submit.
3.  Now ,click on events button . The article available for sale will be visible in events .
4.  Change metamask account to some different account and refresh the browser . Details of second account ie. Eth balance and address will be visible along with the article available for sale .
5.  Click on 'buy' button .
6.  Metamask window will pop up for transaction authorisation . Click on submit.
7.  Details of the events will be visible in events tab.
8.  Now , if you change to first account in metamask and refresh the browser, details on who has brought the article will be visible in events button.

## Screenshot for Account 1 - Sell article

![account_1](https://user-images.githubusercontent.com/33827810/44811615-ad233080-abf2-11e8-8d64-8f3a15bf4c58.JPG)

## Screenshot for Account 2 - Buy Article

![account_2a](https://user-images.githubusercontent.com/33827810/44811732-068b5f80-abf3-11e8-937f-d6f36206e4b7.JPG)


