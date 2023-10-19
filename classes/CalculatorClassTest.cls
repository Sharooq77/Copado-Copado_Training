@isTest
public class CalculatorClassTest {
    // Test method to verify the add method
    @isTest
    static void testAddition() {
        // Test case 1: Positive numbers
        Integer result1 = CalculatorClass.add(5, 3);
        System.assertEquals(8, result1, 'Addition of positive numbers should be correct');

        // Test case 2: Negative numbers
        Integer result2 = CalculatorClass.add(-5, -3);
        System.assertEquals(-8, result2, 'Addition of negative numbers should be correct');

        // Test case 3: Zero
        Integer result3 = CalculatorClass.add(0, 0);
        System.assertEquals(0, result3, 'Addition of zeros should be correct');
    }

    // Test method to verify the subtract method
    @isTest
    static void testSubtraction() {
        // Test case 1: Positive numbers
        Integer result1 = CalculatorClass.subtract(10, 3);
        System.assertEquals(7, result1, 'Subtraction of positive numbers should be correct');

        // Test case 2: Negative numbers
        Integer result2 = CalculatorClass.subtract(-5, -3);
        System.assertEquals(-2, result2, 'Subtraction of negative numbers should be correct');

        // Test case 3: Zero
        Integer result3 = CalculatorClass.subtract(0, 0);
        System.assertEquals(0, result3, 'Subtraction of zeros should be correct');
    }
}