public with sharing class YourApexController {
    @AuraEnabled
    public static String insertData(String name, String description) {
        try {
            // Create a new record to insert into Salesforce
            Account accountToInsert = new Account();
            accountToInsert.Name = name;
            accountToInsert.Description=description; // Replace with the actual field you want to use on the Account object.

            // Insert the record
            insert accountToInsert;

            return 'Data inserted successfully';
        } catch (Exception e) {
            return 'Error inserting data: ' + e.getMessage();
        }
    }
}