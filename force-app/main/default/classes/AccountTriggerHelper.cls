public with sharing class AccountTriggerHelper {
   public static void PreventDupeEmail(List<Account> newAccounts) {
       Set<String> newAccountEmails = new Set<String>();
       for (Account aAccount: newAccounts) {
           newAccountEmails.add(aAccount.Email__c);
       }

       List<Account> duplicateMatches = [SELECT Email__c FROM Account WHERE Email__c IN :newAccountEmails];

       for(Account newAccount : newAccounts) {
           for (Account dupe : duplicateMatches) {
               if (newAccount.Email__c == dupe.Email__c) {
                   newAccount.addError('ERROR: Email already in use by an Account in the system');
                   break;
               }
           }
       }
   }
}
