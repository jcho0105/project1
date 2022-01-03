import { LightningElement, api, wire } from 'lwc';
import productList from '@salesforce/apex/productSectionController.getProductList'

export default class ProductSection extends LightningElement {
    
    @wire(productList)
    products2;

    get responseReceived(){
        if(this.products2){
            return true;
        }
        return false;
    }
    

}