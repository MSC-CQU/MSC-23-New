#include<iostream>
#include<algorithm>
#include<cmath>
using namespace std;

int v, n, ans;
int o[40];          //Object的价值（所占容量）
int f[40][20010];   //dp[i][j] 第i个物品剩余j容量时，往后递归到结束拥有价值最大时的价值
                    //此题中 价值最大类比为所占容量最大, 即所占最大容量

int main(){
    cin>>v>>n;
    for (int i = 1; i <= n; i++)
    {
        cin>>o[i];
    }
    for (int i = n; i >= 1; i--)   //递推与递归相反
    {
        for (int j = 0; j <= v; j++)
        {
            if(j < o[i])
            {
                f[i][j] = f[i+1][j];
            }
            else
            {
                f[i][j] = max(f[i+1][j], f[i+1][j-o[i]]+o[i]);
            }
        }
    }
    cout<<v-f[1][v];
}