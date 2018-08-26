module.exports = {
     // See <http://truffleframework.com/docs/advanced/configuration>
     // to customize your Truffle configuration!
     networks: {
          ganache: {
               host: "localhost",
               port: 7545,
               network_id: "*" // Match any network id
          },
          marketplace: {
            host: "localhost",
            port: 8545,
            network_id: "4224",
            gas:4700000,
            from:'0x4fdbea269099ab7882bbed5ce03114a3b7b2daa7'
     }
}
};
