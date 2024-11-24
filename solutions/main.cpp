#include <bits/stdc++.h>
#define ll long long
//#define int long long
#define fi first
#define se second
#define mat vector<vector<ll>> 
using namespace std;
void db() {cout << '\n';}
template <typename T, typename ...U> void db(T a, U ...b) {cout << a << ' ', db(b...);}

//#ifndef ONLINE_JUDGE
//#define file freopen("input.txt", "r", stdin), freopen("output.txt", "w", stdout)
//#else
#define file ios::sync_with_stdio(false); cin.tie(0)
//#endif
const int N = 1e5 + 1, mod = 998244353, inf = 2e9;
signed main(){
    file;
    int n, m, s;
    cin >> n >> m >> s;
    vector<pair<int, int>> g[n + 1];
    int a[n + 1], b[n + 1];
    for (int i = 1; i <= n; i++) cin >> a[i];
    for (int i = 1; i <= n; i++) cin >> b[i];
    for (int i = 0; i < m; i++){
        int u, v, w;
        cin >> u >> v >> w;
        g[u].push_back({v, w});
        g[v].push_back({u, w});

    }

    ll l = 0, r = inf;
    auto check = [&](int mid){
        int dis[n + 1], finish[n + 1];
        for (int &i : dis) i = inf;
        for (int &i : finish) i = inf;
        priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> q;
        q.push({0, s});
        while (!q.empty()){
            auto u = q.top();
            q.pop();
            if (dis[u.se] <= u.fi) continue;
            dis[u.se] = u.fi;
            if (dis[u.se] + a[u.se] > mid){
                finish[u.se] = dis[u.se] + b[u.se];
                continue;
            }
            finish[u.se] = dis[u.se] + a[u.se];
            for (auto i : g[u.se]) {
                q.push({i.se + u.fi, i.fi});
            }
        }
        //for (int i = 1; i <= n; i++) db(i, finish[i]);
        for (int i = 1; i <= n; i++) if (finish[i] > mid) return false;
        return true;
    };

    while (l < r){
        int mid = l + r >> 1;
        if (check(mid)) r = mid;
        else l = mid + 1;
    }
    cout << l << '\n';
}
