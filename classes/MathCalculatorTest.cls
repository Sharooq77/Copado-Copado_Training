@isTest
public class MathCalculatorTest {
    @isTest
    static void testAdd() {
        Integer result = MathCalculator.add(2, 3);
        System.assertEquals(5, result, 'Expected result is incorrect.');
    }
}