public class AccountOperations {
    public static Account setDefaultDescription(Account a) {
        a.Description = 'Default Description';
        return a;
    }

    public static Account createNewAccount() {
        Account a = new Account();
        a.Name = 'Vishal';
        a.Description = 'Default Description';
        insert a;
        return a;
    }
    
}