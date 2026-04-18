class Solution {
public:
    bool rotateString(string s, string goal) {
        string str=s;
        for(int i=0;i<s.length();i++){
            str.erase(0,1);
            str+=s[i];
            if(str==goal) {
            return true;
            break;
            }
        }
        return false;
    }
};