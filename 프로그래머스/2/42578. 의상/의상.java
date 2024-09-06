import java.util.*;

class Solution {
    public int solution(String[][] clothes) {
        int answer = 0;
        HashMap<String, Integer> map = new HashMap<>();
        for(String[] temp : clothes) {
            map.put(temp[1], map.getOrDefault(temp[1], 0) + 1);
        }
        
        if(map.size() == 1) {
            answer += clothes.length;
        } else {
            answer = 1;
            for(String key : map.keySet()) {
                answer *= (map.get(key)+1);
            }
            answer -= 1;
        }

        return answer;
    }
}