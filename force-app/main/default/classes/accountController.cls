public with sharing class accountController {

    @AuraEnabled
    public static void createAccount(Account accountRec){
        try {
            insert accountRec;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
