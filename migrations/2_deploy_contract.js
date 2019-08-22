const BankLifeToken = artifacts.require("./BankLife.sol");
module.exports = function(deployer) {
    deployer.deploy(BankLifeToken);
};
