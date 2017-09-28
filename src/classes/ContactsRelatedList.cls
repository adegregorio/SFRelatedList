public with sharing class ContactsRelatedList {

    public Case[] contacts {get; set;}

    public ContactsRelatedList(ApexPages.StandardController std) {
        this.contacts = [select Id, Subject from Case where AccountId = :std.getRecord().Id];
    }
}
