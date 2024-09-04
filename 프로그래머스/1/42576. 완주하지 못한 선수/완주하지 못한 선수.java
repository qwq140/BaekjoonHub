import java.util.*;

class Solution {
    public String solution(String[] participant, String[] completion) {
        String answer = "";
        
        // key : 사람 이름, value : 해당 이름의 인원수
        HashMap<String, Integer> map = new HashMap<>();
        
        for(String temp : participant) {
            map.put(temp, map.getOrDefault(temp, 0)+1);
        }
        
        for(String temp : completion) {
            map.put(temp, map.get(temp) - 1);
        }
        
        for(Map.Entry<String, Integer> entry : map.entrySet()) {
            if(entry.getValue() != 0) {
                answer = entry.getKey();
                break;
            }
        }
        
        return answer;
    }
}