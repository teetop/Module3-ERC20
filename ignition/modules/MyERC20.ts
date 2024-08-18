import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const MyERC20 = buildModule("AvalModule", (m) => {


  const myERC20 = m.contract("MyERC20", ["MyToken", "MTK"]);

  return { myERC20 };
});

export default MyERC20;
