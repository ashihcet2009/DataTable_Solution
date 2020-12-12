import { LightningElement,wire } from 'lwc';
import getProductList  from '@salesforce/apex/ProductList.getProductList';
export default class Product_list extends LightningElement {
    @wire(getProductList) products;
}