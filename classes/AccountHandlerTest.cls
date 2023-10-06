@isTest
public class AccountHandlerTest {
    @isTest
    static void testUpdateAccountRating() {
        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account', Rating = 'Hot');
        insert testAccount;
        
        // Call the method to update the Rating
        AccountHandler.updateAccountRating(testAccount, 'Warm');
        
        // Retrieve the updated Account
        Account updatedAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        
        // Verify that the Rating has been updated
        System.assertEquals('Warm', updatedAccount.Rating);
    }
}