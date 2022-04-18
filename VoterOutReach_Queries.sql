#1 Return all voters, sorted by last name, then first name

select LAST_NAME as "Last Name",
FIRST_NAME as "First Name" 
from voter
order by LAST_NAME asc;

#2 Return the number of voters registered as Democrats, who registered after 2016.

select count(SOS_VOTERID) as "Number of Democrats Registered After 2016"
from voter
where PARTY_AFFILIATION = "D"
and REGISTRATION_DATE > 2016-12-31;

#3 Return the call list for a particular volunteer who is assisting with a particular phonebank. 
# Given a volunteer id and phonebank id, it should return the voter names and phone numbers that the volunteer should call.

select Voter.FIRST_NAME as "Voter's First Name", Voter.LAST_NAME as "Voter's Last Name",
PhoneRecord.Voter_PhoneNumber as "Voter's Phone Number"
from Voter, PhoneRecord
where Voter.SOS_VOTERID = PhoneRecord.Voter_ID
and PhoneRecord.Volunteer_ID = 'C000000048'
and PhoneRecord.Phonebank_ID = 'PB000000020';

#4 Return the number of times a particular contact has been sent email messages.

select count(Contact_ID)as "Number of Times Contacted by Email"
from ContactLog
where Contact_ID = "C000000017"
and Method = "EMAIL";

#5 Return the donation totals for every contact who has made a donation. 
#It should display the contact name and the donation total.

select Contact.First_Name as "First Name" , Contact.Last_Name as "Last Name", 
sum(Donation.Amount) as "Total Donation Amount"
from Contact, Donation
where Contact.Contact_ID = Donation.Contact_ID
group by Contact.First_Name, Contact.Last_Name;

#6 Return a list of all events held for a particular candidate 
#(user would enter a candidate name and election date, and would see the list of events)

select Event.Event_Name as "Events"
from Event, Campaign
where Event.Campaign_ID = Campaign.Campaign_ID
and Campaign.Candidate_fname = 'Meredith'
and Campaign.Candidate_lname = 'Shea'
and Campaign.Election_Date = '2022-05-03';

#7 For a given contact, return information on all campaigns in which he or she has been a candidate. 
# A user would enter the contact name, and get a list of positions run for, and election date.

select Campaign.Campaign_Name as "Campaign Name",
Campaign.Position, Campaign.Election_date as "Election Date"
from Campaign, Contact
where Contact.Contact_ID = Campaign.Candidate_Contact_ID
and Campaign.Candidate_fname = 'Von'
and Campaign.Candidate_Lname = 'Crossland';

#8 return the name, residential address, and email for all contacts who are 
# registered as Republicans and who vote in Congressional district 11.

select Contact.First_Name as "First Name", Contact.Last_Name as "Last Name", 
Contact.Email, Voter.RESIDENTIAL_ADDRESS1 as "Residential Address", Voter.RESIDENTIAL_CITY as "Residential City",
Voter.RESIDENTIAL_STATE as "Residential State", Voter.RESIDENTIAL_ZIP as "Residential Zip"
from Contact, Voter
where Contact.Voter_ID = Voter.SOS_VOTERID
and Contact.Party = "R" 
and Voter.CONGRESSIONAL_DISTRICT = "11";

#9 and 10. 
#Write two more queries that would be useful for a political campaign.
#Your queries must involve more than one table, and one should use an aggregate functions.
#For each query, explain why it would be useful.

#9
# Once political campaigns identify a target population they are interested in, they have to determine a sample size to poll. 
#It is impossible to poll every individual within a certain area. Therefore, political campaigns can use a smaller random sample to 
#poll in order to make predictions of demographics and election outcomes. 
#The query below indicates how many people have been polled so far for a particular phonebank that is designated to a campaign.

select count(Voter.SOS_VOTERID) as "Number of Voter's Polled"
from Voter, PhoneRecord, PhoneBank
where Voter.SOS_VOTERID = PhoneRecord.Voter_ID
and PhoneRecord.Phonebank_ID = PhoneBank.Phonebank_ID
and PhoneBank.Reason = "POLL"
and PhoneBank.Phonebank_ID = "PB000000007";

#10
#Majority of political campaigns function as a result of contacts who volunteer. In order for campaigns to maintain and 
#gain volunteers they should keep track of them. The more volunteers who participate in events and phonebanks can 
#increase the campaign’s outreach to projected voters and raise more money. This query in particular looks at the campaign’s event,
#the date, the name of the contacts and the start and end time of their volunteer shift. This is done by a user entering an event's ID. 

select Event.Event_Name as "Event Name", Contact.First_Name as "Volunteer First Name", Contact.Last_Name as "Volunteer Last Name", 
Event.Start_date as "Event Date", ParticipatesIn.Start_Time as "Volunteer Start Time", ParticipatesIn.End_Time as "Volunteer End Time"
from Contact, Event, ParticipatesIn
where Event.Event_ID = ParticipatesIn.Event_ID
and ParticipatesIn.Contact_ID = Contact.Contact_ID
and Event.Event_ID = 'E889234556';


