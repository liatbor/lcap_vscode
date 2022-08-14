using { tickets as my } from '../db/schema';

@path : 'service/tickets'
@requires : 'authenticated-user'
service ticketsService
{
    entity Contact as
        projection on my.Contact;

    entity Ticket as
        projection on my.Ticket;
}
