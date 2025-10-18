# SimpleTickets

A beginner Solidity smart contract to mint and track digital event tickets on the Flow EVM Testnet. This is my **first Web3 project**, created to explore blockchain development and NFT concepts.

## Overview

`SimpleTickets` allows users to create digital tickets for events, each storing:  

- **Event Name**  
- **Event Date**  
- **Owner Address**  

Users can mint new tickets and view ticket details. Perfect for learning Web3 basics and demonstrating blockchain ticketing.  

## Contract Details

### State Variables

- `nextTicketId` – Tracks the next ticket ID to be minted.  
- `tickets` – Mapping of ticket IDs to `Ticket` structs.

### Structs

- `Ticket`  
  - `eventName` (string) – Name of the event  
  - `eventDate` (string) – Date of the event  
  - `owner` (address) – Owner of the ticket  

## Functions

### `mintTicket(string memory eventName, string memory eventDate)`

Mints a new ticket and assigns it to the caller (`msg.sender`).  

### `getTicket(uint256 ticketId) returns (string memory, string memory, address)`

Returns the details of a ticket by its ID. Reverts if the ticket does not exist.

## Example Usage

```solidity
// Mint a new ticket
mintTicket("HackQuest", "2025-10-20");

// Get ticket info
(string memory name, string memory date, address owner) = getTicket(0);
