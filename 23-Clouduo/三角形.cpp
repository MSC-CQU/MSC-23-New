#include<iostream>
#include<cmath>
using namespace std;

int r, sum = 0;
int n[1010][1010];
int f[1010][1010];

int main(){
    cin>>r;
    for (int i = 1; i <= r; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            cin>>n[i][j];
        }
    }
    for (int i = r; i >= 1; i--)
    {
        for (int j = 1; j <= i; j++)
        {
            f[i][j] = max(f[i+1][j], f[i+1][j+1]) + n[i][j];
        }
    }
    cout<<f[1][1];
}