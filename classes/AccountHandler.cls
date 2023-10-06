public class AccountHandler {
    public static void updateAccountRating(Account acc, String newRating) {
        if (acc != null && newRating != null) {
            acc.Rating = newRating;
            update acc;
        }
    }
}