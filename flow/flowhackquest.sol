// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleTickets {
    uint256 public nextTicketId = 0;

    struct Ticket {
        string eventName;
        string eventDate;
        address owner;
    }

    mapping(uint256 => Ticket) public tickets;

    // Mint a new ticket
    function mintTicket(string memory eventName, string memory eventDate) public {
        tickets[nextTicketId] = Ticket(eventName, eventDate, msg.sender);
        nextTicketId++;
    }

    // View ticket info
    function getTicket(uint256 ticketId) public view returns (string memory, string memory, address) {
        require(ticketId < nextTicketId, "Ticket does not exist");
        Ticket memory t = tickets[ticketId];
        return (t.eventName, t.eventDate, t.owner);
    }
}
