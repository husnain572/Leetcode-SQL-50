class Solution {
public:
    int finalValueAfterOperations(vector<string>& operations) {
        int ans=0;
        for(auto ch:operations){
            if(ch[1]=='+') {
                ans++;
            }
            else ans--;
        }
        return ans;
    }
};