public class AccountOperations {
    public static Account setDefaultDescription(Account a) {
        a.Description = 'Default Description';
        return a;
    }

    public static Account createNewAccount(String accountName, String description) {
        Account a = new Account();
        a.Name = accountName;
        a.Description = description;
        insert a;
        return a;
    }
    
}