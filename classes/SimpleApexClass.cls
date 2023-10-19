public class SimpleApexClass {

    // Class variables (fields)
    public String message; // A public string variable

    // Constructor method
    public SimpleApexClass() {
        message = 'Hello, World!'; // Set a default message in the constructor
    }

    // Public method
    public String getMessage() {
        return message; // Returns the message variable
        //system.debug();
    }
}