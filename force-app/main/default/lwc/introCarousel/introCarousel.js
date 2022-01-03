import { LightningElement } from 'lwc';
import keyboard_images from '@salesforce/resourceUrl/keyboard_images'; 

export default class IntroCarousel extends LightningElement {
    product1Url = keyboard_images + '/keyboard1.jpg';
    product2Url = keyboard_images + '/keyboard2.jpg';
    product3Url = keyboard_images + '/keyboard3.jpg';
}