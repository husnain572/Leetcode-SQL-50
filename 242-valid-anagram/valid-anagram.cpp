class Solution {
public:
    bool isAnagram(string s, string t) {
        unordered_map<char, int> s_map;
        unordered_map<char, int> t_map;
        for(auto itr:s){
            s_map[itr]++;
        }
        for(auto itr:t){
            t_map[itr]++;
        }
        if(s_map==t_map) return true;
        else return false;
    }
};