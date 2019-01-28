// Populate a Contact Lookup field if there's a dupe!
trigger DetectDupes on Lead (before insert, before update) {
    for (Lead l : Trigger.new) {
        if (l.Email != null) {
            String leadEmail = l.Email;
            List<Contact> dupeContacts = [SELECT Id FROM Contact
                                          WHERE Email = :l.Email];
            if (dupeContacts.size() > 0) {
                l.Dupe_Contact__c = dupeContacts[0].Id;
            } else {
                l.Dupe_Contact__c = null;
            }
        } else {
            l.Dupe_Contact__c = null;
        }
    }
}