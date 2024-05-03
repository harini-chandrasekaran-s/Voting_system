const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");



module.exports = buildModule("voting_systemModule", (m) => {
  const votingsys=m.contract("voting_system");

  return { votingsys };
});
