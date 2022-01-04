import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import ACCOUNT_EMAIL from '@salesforce/schema/Account.Email__c';


export default class RegisterCustomer extends LightningElement {
    
    accountObject = ACCOUNT_OBJECT;
    myFields = [ACCOUNT_NAME, ACCOUNT_EMAIL];

    handleAccountCreated(){
        
    }
    
}