public with sharing class productSectionController {
    
    @AuraEnabled(cacheable=true)
    public static List<Product2> getProductList() {
        return [SELECT Id, Name FROM Product2 WHERE ProductCategory__c = 'Keyboard' OR ProductCategory__c = 'Keycaps' OR ProductCategory__c = 'Switches' LIMIT 3];
    }
}
