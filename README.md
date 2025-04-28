# SimpleStorage Smart Contract

![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?logo=solidity&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

A basic Solidity smart contract for storing and managing a single unsigned integer value on the Ethereum blockchain.

## Features

- **Store/Retrieve**: Set and get a favorite number
- **Increment/Decrement**: Modify the stored number with safety checks
- **Reset**: Clear the stored value (sets to 0)
- **Event Tracking**: Emits events for all state changes
- **Overflow Protection**: Prevents integer overflow/underflow

## Contract Functions

### Core Functions
| Function | Description | Parameters | Returns |
|----------|-------------|------------|---------|
| `store` | Stores a new number | `uint256 _favNum` | - |
| `getFavoriteNumber` | Retrieves the stored number | - | `uint256` |

### Utility Functions
| Function | Description |
|----------|-------------|
| `increment` | Increases stored number by 1 (with overflow check) |
| `decrement` | Decreases stored number by 1 (with underflow check) |
| `reset` | Resets stored number to 0 |

### Events
| Event | Description |
|-------|-------------|
| `NumberStored` | Emitted when a new number is stored |
| `NumberIncremented` | Emitted when number is incremented |
| `NumberDecremented` | Emitted when number is decremented |

## Usage

### Prerequisites
- [Node.js](https://nodejs.org/) (v16+ recommended)
- [Hardhat](https://hardhat.org/) or [Remix IDE](https://remix.ethereum.org/)
- Ethereum wallet (MetaMask, etc.)

### Deployment
1. Clone the repository:
```bash
git clone https://github.com/your-username/simple-storage.git
cd simple-storage
