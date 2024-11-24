# Attack-Plan
IONC 2023 Practice Problem
## Problem Statement

敵人共有 $n$ 個據點，由 $m$ 條雙向道路互相連接。第 $i$ 條道路連接的是第 $u_i$ 個和第 $v_i$ 個據點，且該道路的長度為 $w_i$，代表要通過該道路需要花費 $w_i$ 秒。保證任意兩個據點之間都是直接或間接的連接的。

現在，你組織了一個 $n$ 個人的部隊，想要佔領敵人全部的據點。一開始（第 $0$ 秒時），所有人都在第 $s$ 個據點。

每個據點都有兩個數值代表其進攻的難度；當兵隊抵達第 $i$ 個據點的時候，根據抵達的小隊人數是否大於一，執行下列兩種操作之一：

* 如果小隊人數至少有兩個人或更多，則派遣部隊的其中一個人開始進攻該據點，其餘人繼續移動。留下來的那個人將會花 $a_i$ 秒（從他開始進攻的時間算起）成功佔領據點。
* 如果小隊人數只有一人，則直接開始進攻該據點。已知他將會花 $b_i$ 秒（從他開始進攻的時間算起）成功佔領該據點。

因為被小隊拋下一個人進攻會很不甘情願，所以對於每個據點都滿足 $a_i \geq b_i$ 的性質。

在兵隊移動的時候，你可以自由指揮。兵分多路的時候，每個路拆分出來的小隊人數將由你自由決定（其中幾條路也可以 $0$ 個人走）。需要特別注意的規則是：你無法讓一個小隊移動到有人正在進攻或是已經進攻完成的據點，也不能讓兩個小隊同時抵達同一個據點。

在你的精心指揮下，最快需要幾秒才可以將所有據點都佔領？

## Input Format

第 $1$ 行： $n \ \ m \ \ s$

第 $2$ 行： $a_1 \ \  a_2 \ \  a_3 \ \  \ldots \ \  a_n$

第 $3$ 行： $b_1 \ \  b_2 \ \  b_3 \ \  \ldots \ \  b_n$

第 $3+i$ 行($1 \le i \le m$)： $u_i \ \  v_i \ \  w_i$

## Output Format

輸出一個整數：將所有據點都攻佔完畢的最短時間。

## Constraints

* $1 \leq n, m \leq 10^5$。
* $1 \leq b_i \leq a_i \leq 10^{9}$ ($1 \leq i \leq n$)。
* $1 \leq w_i \leq 10^4$ ($1 \le i \leq m$)。
* $1 \leq u_i, v_i \leq n$ ($1 \leq i \leq m$)。
* $u_i \neq v_i$ ($1 \leq i \leq m$)。

## Example Input
```
4 5 2
8 5 1 10
2 2 1 1
2 1 2
2 3 4
1 4 3
4 3 3
1 3 1
```

## Example Output
```
8
```
