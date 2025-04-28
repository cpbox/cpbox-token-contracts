// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CPBoxToken is ERC20 {
    uint8 private _decimals; // 声明小数位数变量

    constructor(
        uint256 initialSupply,
        string memory name,
        string memory symbol,
        uint8 decimals_
    ) ERC20(name, symbol) {
        _decimals = decimals_; // 设置小数位数
        _mint(msg.sender, initialSupply); // 铸造初始供应量
    }

    // 覆盖 decimals() 函数，返回自定义值
    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
