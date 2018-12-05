@isTest
public class AccountOperationsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        Database.SaveResult result = Database.insert(acc);
        Account a = AccountOperations.createNewAccount();
        
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default Description', savedAcc.Description);
 
        // Verify
        savedAcc = [SELECT Name FROM Account WHERE Name = 'Vishal'];
        System.assertEquals('Vishal', savedAcc.Name);
        
    }
}