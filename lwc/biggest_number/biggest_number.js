import { LightningElement } from 'lwc';

export default class Biggest_number_lwc extends LightningElement {
  inputnumber1;
  inputnumber2;
  inputnumber3;

  fristnumberfunction(event) {
    this.inputnumber1 = event.target.value;
  }

  secondnumberfunction(event) {
    this.inputnumber2 = event.target.value;
  }

  thirdnumberfunction(event) {
    this.inputnumber3 = event.target.value;
  }

  submit(event) {
    // Logic to find the biggest number among inputnumber1, inputnumber2, and inputnumber3
    const num1 = parseInt(this.inputnumber1);
    const num2 = parseInt(this.inputnumber2);
    const num3 = parseInt(this.inputnumber3);

    if (num1 > num2 && num1 > num3) {
      alert('First input number is the biggest.');
     
    } else if (num2 > num1 && num2 > num3) {
      alert('Second input number is the biggest.');
      
    } else if (num3 > num1 && num3 > num2) {
      alert('Third input number is the biggest.');
      
    } 
  }

  clear(event) {
    this.inputnumber1 = '';
    this.inputnumber2 = '';
    this.inputnumber3 = '';
  }
}