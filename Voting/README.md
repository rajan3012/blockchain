-----

NOTES:

code = fs.radFileSync('Voting.sol').toString()
solc = require('solc')
compiledCode = solc.compile(code)


Components of  : compiledCode.contracts[':Voting'] 

1. bytecode : 
	- Bytecode of compiled Voting.sol
	- Code that is depolyed to the blockchain

2. interface :
	- Interface aka template of the contract (called abi) which tells the contract user what 
		methods are available in contract.
	- ABI = Application Binary Interface - strongly typed
	- Defines types 

3. 
