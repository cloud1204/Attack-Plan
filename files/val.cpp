#include "testlib.h"

#include <bits/stdc++.h>
#include <cassert>
using namespace std;

int MAXN = 100000;
int MAXM = 100000;
int MAXW = 1e4;
long long MAXA = 1e9;
int32_t main(int32_t argc, char* argv[]) {
    registerValidation(argc, argv);
    
    if (validator.group() == "s3") {
        MAXN = MAXM = MAXA = MAXW = 100;
    }
    
    /// start input ///
    
    int n = inf.readInt(1, MAXN, "n");
    inf.readSpace(); 
    int m = inf.readInt(1, MAXM, "m");
    inf.readSpace(); 
    int s = inf.readInt(1, n, "s");  
    inf.readEoln();
    long long a[n], b[n];
    if (validator.group() == "s1") {
        ensure(m == n - 1);
    }
    for (int i = 0; i < n; i++){
        a[i] = inf.readLong(1, MAXA, "a");
        if (i == n - 1) inf.readEoln();
        else inf.readSpace();  
    }
    for (int i = 0; i < n; i++){
        b[i] = inf.readLong(1, MAXA, "b");
        ensure(b[i] <= a[i]);
        if (validator.group() == "s2") ensure(a[i] == b[i]);
        if (i == n - 1) inf.readEoln();
        else inf.readSpace();  
    }
    vector<int> g[n];

    for (int i = 0; i < m; i++){
        int u = inf.readInt(1, n, "u");
        inf.readSpace(); 
        int v = inf.readInt(1, n, "v");
        inf.readSpace(); 
        int w = inf.readInt(1, MAXW, "w");  
        inf.readEoln();
        
        ensure(u != v);
        u--;
        v--;
        g[u].push_back(v);
        g[v].push_back(u);
    }
    
    bool vis[n]{};
    queue<int> q;
    q.push(0);
    while (!q.empty()){
        int u = q.front();
        q.pop();
        for (int i : g[u]){
            if (vis[i]) continue;
            vis[i] = 1;
            q.push(i);
        }
    }
    for (int i = 0; i < n; i++) assert(vis[i]);

    inf.readEof();

    return 0;
}