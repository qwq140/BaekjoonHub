import java.util.*;

public class Main {
     public static String parenthess(String str) {
        Stack<Character> stack = new Stack<>();

        for(int i = 0; i < str.length() ; i++) {
            char c = str.charAt(i);
            if(c == ')') {
                if(stack.isEmpty() || stack.pop() != '(') {
                    return "NO";
                }
            } else {
                stack.add(c);
            }
        }

        if(stack.isEmpty()) {
            return "YES";
        }
        return "NO";
    }

    
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        List<String> list = new ArrayList<>();

        for (int i = 0; i < n ; i++) {
            String str = sc.next();
            list.add(str);
        }

        for (String s : list) {
            System.out.println(parenthess(s));
        }
	}
}