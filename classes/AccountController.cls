public with sharing class AccountController {
      public String accountId{get;set;}
      public Account actObj{get;set;}
      public AccountController() {
          actObj = new Account();
      }  
      
      public static List<Account> getAllActiveAccounts() {
        return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
      }


      @AuraEnabled(cacheable=true)    
      public static List<Account> getAccounts(){
          return [select id,name,type,phone,industry from Account limit 10];
      }
      @AuraEnabled
      public static List<Account> getAccountRecordsList(){
          return [select id,name,type,phone,industry from Account limit 10];
      }
      public pageReference retrieveAccountDetail(){
          if(accountId!=null){
               actObj = [select id,name,type,industry from Account where id=:accountId];
              
          }       
      return null;        
      }

}