/**
 * @Author          :   Ashita
 * @Date            :   Dec 11
 * @Description     :   Controller Class for LWC COmponent
 */
public with sharing class ProductList {
    public ProductList() {} 

    /**
     * Methodto be used by LWC
     */
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProductList() {
        return [SELECT Id, Name,  Active__c, Description__c , price__c FROM Product__c Order By CreatedDate DESC];
    }

}