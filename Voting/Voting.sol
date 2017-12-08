//Version of compiler this code will compile with
pragma solidity ^0.4.18;


contract Voting {

/* 
Mapping field below is equivalent to an associate array or hash.
The key of the mapping is candidate name stored as type byte32 and value is 
an unsigned integer to store the vote count
*/

mapping ( byte32 => uint8 ) public votesReceived;

/*
Solidity does not let you pass in an array of strings in the constructor itself (yet)
We will use an array of byte32 instead to store the list of candidates
*/

byte32[] public candidateList;



/*
This is the contructor which will be called once when you
deply the contract to the blockchain. When we deploy the contract, we will pass an array of candidates who will be contesting in the election
*/

function Voting( byte32[] candidateNames ) public {
	candidateList = candidateNames;
}

// This function returns the total votes a candidate has received so far

function totalVotesFor( bytes32 candidate ) view public returns (uint8) {
	require(validCandidate(candidate));
	return votesReceived[candidate];
}


// This function increments the vote count for the specified candidate. This is
// equivalent to casting a vote

function voteForCandidate(byte32 candidate) public {
	require(validCandidate(candidate));
	votesReceived[candidate] +=1 ;
}

function validCandidate( byte32 candidate) view public returns (bool) {
	for(unit i = 0; i < candidateList.length; i++) {
		if (candidateList[i] == candidate) {
			return true;
		}
	}
	return false;
}

