#include<bits/stdc++.h>
//#include<ext/pb_ds/assoc_container.hpp>
//#include<ext/pb_ds/tree_policy.hpp>
#pragma GCC optimize("unroll-loops,no-stack-protector,Ofast")
using namespace std;
//using namespace __gnu_pbds;
typedef long long ll;
typedef pair<ll, ll> pll;
typedef long double ld;
//typedef tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update> ordered_set;
#define pb push_back 
#define mp make_pair
#define fi first
#define se second
#define lwb lower_bound
#define setp setprecision
#define SZ(_a) (ll)(_a).size()
#define SQ(_a) ((_a)*(_a))
#define all(_a) (_a).begin(), (_a).end()
#define chmax(_a, _b) _a = max(_a, _b)
#define chmin(_a, _b) _a = min(_a, _b)
template <class T> inline ostream& operator << (ostream& out, vector<T> v) {
    for (int i = 0;i < SZ(v); ++i) out << v[i] << (i == SZ(v)-1 ? "" : " ");
    return out;
}

template <class A, class B> inline ostream& operator << (ostream& out, pair<A, B> p) {
    out << "(" << p.fi << ", " << p.se << ")";
    return out;
}

template <class A, class B> inline pair<A, B> operator + (pair<A, B> pA, pair<A, B> pB) {
    return make_pair(pA.fi+pB.fi, pA.se+pB.se);
}

template <class A, class B> inline pair<A, B> operator - (pair<A, B> pA, pair<A, B> pB) {
    return make_pair(pA.fi-pB.fi, pA.se-pB.se);
}

template <class A, class B, class C> inline pair<A, B> operator * (pair<A, B> pA, C pB) {
    return make_pair(pA.fi*pB, pA.se*pB);
}



const ll N = 2e5 + 5;
const ll MOD = 1e9 + 7;
const ld pi = acos(-1);
const ll INF = (1LL<<60);

priority_queue<pll, vector<pll>, greater<pll> > pq;
ll dis[N], n, m, s, a[N], b[N];
vector<pll> v[N];

bool ck(ll k) {
    ll ret = 1;
    for (ll i = 1;i <= n; ++i)
        dis[i] = INF;
    pq.push(mp(dis[s] = 0, s));
    while (!pq.empty()) {
        pll now = pq.top();
        pq.pop();
        if (now.fi != dis[now.se])
            continue;
        if (now.fi + a[now.se] <= k) {
            for (auto i : v[now.se]) {
                if (dis[i.fi] > now.fi + i.se) {
                    pq.push(mp(dis[i.fi] = now.fi + i.se, i.fi));
                }
            }
        } else if (now.fi + b[now.se] > k) {
            ret = 0;
        }
    }
    for (ll i = 1;i <= n; ++i)
        if (dis[i] + b[i] > k)
            ret = 0;
    return ret;
}

void solve() {
    cin >> n >> m >> s;
    for (ll i = 1;i <= n; ++i)
        cin >> a[i];
    for (ll i = 1;i <= n; ++i)
        cin >> b[i];
    for (ll i = 1, x, y, c;i <= m; ++i) {
        cin >> x >> y >> c;
        v[x].pb(mp(y, c));
        v[y].pb(mp(x, c));
    }
    ll ans = 0;
    for (ll level = 60; level >= 0; --level) {
        if (!ck(ans+(1LL<<level)))
            ans += (1LL<<level);
    }
    if (!ck(ans)) ++ans;
    cout << ans << "\n";
}

int main () {
    ios_base::sync_with_stdio(0);cin.tie(0);
    solve();
    return 0;
}

/* Don't forget to check:
 * special case (n=1?)
 * array bounds.
 * hash collision
 * MOD in every step
*/



