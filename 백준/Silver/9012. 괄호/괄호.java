import java.util.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static String parenthess(String str) {
        int stack = 0;

        for(int i = 0; i < str.length() ; i++) {
            char c = str.charAt(i);
            if(c == ')') {
                if(stack-- == 0) {
                    return "NO";
                }
            } else {
                stack++;
            }
        }

        if(stack == 0) {
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
