namespace tickets;

using sap.workflow from './WorkflowObject';

entity Contact
{
    key ID : UUID
        @Core.Computed;
    firstName : String(100);
    lastName : String(100);
    email : String(100);
    creditcard : String(100);
}

entity contactaddress
{
    key ID : UUID
        @Core.Computed;
    street : String(100);
    number : String(100);
    postcode : String(100);
    city : String(100);
    state : String(100);
    country : String(100);
    contact : Association to one Contact;
}

entity Ticket
{
    key ID : UUID
        @Core.Computed;
    subject : String(100);
    language : String(100);
    category : String(100);
    status : String(100);
    priority : String(100);
    externalreference : String(100);
    note : LargeString;
    contact : Association to one Contact;
    correspondence : Composition of many Correspondence on correspondence.ticket = $self;
}

entity Correspondence
{
    key ID : UUID
        @Core.Computed;
    subject : String(100);
    message : String(100);
    status : String(100);
    ticket : Association to one Ticket;
}