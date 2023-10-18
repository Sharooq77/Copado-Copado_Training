@isTest
public class SimpleApexClassTest {

    // Test method to verify the behavior of the getMessage method
    static testMethod void testGetMessage() {
        // Create an instance of SimpleApexClass
        SimpleApexClass myClass = new SimpleApexClass();
        
        // Call the getMessage method and store the result
        String result = myClass.getMessage();
        
        // Verify that the result matches the expected message
        System.assertEquals('Hello, World!', result);
         //System.assertEquals('Hello, World!', result);
        
    }
}