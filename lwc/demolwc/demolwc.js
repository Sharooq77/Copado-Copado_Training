import { LightningElement, track } from 'lwc';
import insertData from '@salesforce/apex/YourApexController.insertData'; // Replace YourApexController with your actual Apex class name
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class InsertDataComponent extends LightningElement {
    @track name = '';
    @track description = '';

    handleNameChange(event) {
        this.name = event.target.value;
    }

    handleDescriptionChange(event) {
        this.description = event.target.value;
    }

    insertData(event) {
        // Check if name and description are not empty
        if (this.name && this.description) {
            // Call the Apex method to insert data
            insertData({ name: this.name, description: this.description })
                .then(result => {
                    // Handle success
                    this.name = '';
                    this.description = '';
                    const evt = new ShowToastEvent({
                        title: 'Record Created',
                        message: 'Record ID: ' + result,
                        variant: 'success',
                    });
                    this.dispatchEvent(evt);
                    console.log('Data inserted successfully:', result);
                    // You can add further actions like showing a success message or resetting the form here.
                })

                .catch(error => {
                    // Handle errors
                    const evt = new ShowToastEvent({
                        title: 'Error',
                        message: 'Error inserting data: ' + error.body.message,
                        variant: 'error',
                    });
                    this.dispatchEvent(evt);
                    console.error('Error inserting data:', error);
                    // You can add error handling here, like displaying an error message.
                });
        } else {
            // Handle validation errors, e.g., show an error message to the user.
            const evt = new ShowToastEvent({
                title: 'Error',
                message: 'Please fill in both Name and Description fields.',
                variant: 'error',
            });
            this.dispatchEvent(evt);
        }
    }
}