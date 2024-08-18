import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const AvalModule = buildModule("AvalModule", (m) => {

  const tokenName = m.getParameter("tokenName", "AvalToken");
  const tokenSymbol = m.getParameter("tokenSymbol", "ATK");

  const avalToken = m.contract("AvalToken", [tokenName, tokenSymbol]);

  return { avalToken };
});

export default AvalModule;
