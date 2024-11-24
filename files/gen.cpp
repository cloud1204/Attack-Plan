#include "testlib.h"
#include <bits/stdc++.h>
using namespace std;

int MINN = 1;
int MAXN = 100'000;

int MINM = 1;
int MAXM = 100'000;

int MAXW = 1e4;
long long MAXA = 1e9;

int32_t main(int32_t argc, char* argv[]) {
    registerGen(argc, argv, 1);
    
    if (has_opt("minn")) MINN = opt<int>("minn");
    if (has_opt("maxn")) MAXN = opt<int>("maxn");
    if (has_opt("minm")) MINM = opt<int>("minm");
    if (has_opt("maxm")) MAXM = opt<int>("maxm");
    if (has_opt("maxw")) MAXW = opt<int>("maxw");
    if (has_opt("maxa")) MAXA = opt<int>("maxa");
    int n = rnd.next(MINN, MAXN), m = rnd.next(n - 1, MAXM), s;
    vector<pair<int, int>> e;
    string type= opt("type");
    
    if (type == "tree") m = n - 1;
    
    /// types ///
    vector<int> p;
	for (int i = 1; i <= n; i++) p.push_back(i);
	shuffle(p.begin(), p.end());

	for (int i = 1; i < n; i++){
	    e.push_back({i, rnd.next(0, i - 1)});
	}
	s = p[0];
	for (auto &i : e){
	    i.first = p[i.first];
	    i.second = p[i.second];
	}

	for (int i = n; i <= m; i++){
	    int u = rnd.next(1, n - 1);
	    int v = rnd.next(u + 1, n);
	    e.push_back({u, v});
	}
    
    
    /// prints ///
    
    cout << n << ' ' << m << ' ' << s << '\n';
    long long a[n], b[n];
    for (int i = 0; i < n; i++){
    	a[i] = rnd.next(1ll, MAXA);
    	b[i] = rnd.next(1ll, MAXA);
    	if (type == "same") b[i] = a[i];
    	if (a[i] < b[i]) swap(a[i], b[i]);
    	cout << a[i] << (i == n - 1 ? '\n' : ' ');
    }
    for (int i = 0; i < n; i++){
    	cout << b[i] << (i == n - 1 ? '\n' : ' ');
    }
    for (auto i : e){
    	cout << i.first << ' ' << i.second << ' ';
    	cout << rnd.next(1, MAXW) << '\n';
    }
    return 0;
}