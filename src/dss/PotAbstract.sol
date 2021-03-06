pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/pot.sol
contract PotAbstract {
    // mapping (address => uint256) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // mapping (address => uint256) public pie;  // user Savings Dai
    function pie(address) public view returns (uint256);
    // uint256 public Pie;  // total Savings Dai
    function Pie() public view returns (uint256);
    // uint256 public dsr;  // the Dai Savings Rate
    function dsr() public view returns (uint256);
    // uint256 public chi;  // the Rate Accumulator
    function chi() public view returns (uint256);
    // VatAbstract public vat;  // CDP engine
    function vat() public view returns (address);
    // address public vow;  // debt engine
    function vow() public view returns (address);
    // uint256 public rho;  // time of last drip
    function rho() public view returns (uint256);
    // uint256 public live;  // Access Flag
    function live() public view returns (uint256);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function cage() external;
    function drip() external returns (uint256);
    function join(uint256) external;
    function exit(uint256) external;
}
