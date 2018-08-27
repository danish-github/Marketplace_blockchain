module.exports = {

     networks: {
          ganache: {
               host: "localhost",
               port: 7545,
               network_id: "*" // Match any network id
          },
          ganache_cli: {
            host: "localhost",
            port: 8545,
            network_id: "*",
            gas:5000000,

     }
}
};
