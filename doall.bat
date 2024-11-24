rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 01" "tests\03" 3
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 02" "tests\04" 4
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 03" "tests\05" 5
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 04" "tests\06" 6
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 05" "tests\07" 7
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree 06" "tests\08" 8
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree --minn=100000" "tests\09" 9
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same 01" "tests\10" 10
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same 02" "tests\11" 11
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same 03" "tests\12" 12
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxn=50000 --minm=100000 04" "tests\13" 13
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxn=10000 --minm=100000 05" "tests\14" 14
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxn=5000 --minm=100000 06" "tests\15" 15
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxn=1000 --minm=100000 07" "tests\16" 16
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxn=30000 --minm=100000 08" "tests\17" 17
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --minn=50000 --maxm=100000 09" "tests\18" 18
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --minn=70000 --maxm=100000 10" "tests\19" 19
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxa=10000 --maxw=10000" "tests\20" 20
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxa=10000 --maxw=100" "tests\21" 21
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --maxa=10000 --maxw=10" "tests\22" 22
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=same --minn=100000" "tests\23" 23
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=100 --maxm=100 --maxa=100 --maxw=100 01" "tests\24" 24
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=100 --maxm=100 --maxa=100 --maxw=100 02" "tests\25" 25
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=100 --maxm=100 --maxa=100 --maxw=100 03" "tests\26" 26
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=100 --maxm=100 --maxa=100 --maxw=100 04" "tests\27" 27
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree --maxn=100 --maxm=100 --maxa=100 --maxw=100 05" "tests\28" 28
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=tree --maxn=100 --maxm=100 --maxa=100 --maxw=100 06" "tests\29" 29
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --maxm=100 --maxa=100 --maxw=20 07" "tests\30" 30
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --maxm=100 --maxa=100 --maxw=50 08" "tests\31" 31
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --maxm=100 --maxa=100 --maxw=10 09" "tests\32" 32
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --maxm=100 --maxa=100 --maxw=10 10" "tests\33" 33
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --minn=50 --minm=100 --maxm=100 --maxa=100 --maxw=10 11" "tests\34" 34
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50 --minn=50 --minm=100 --maxm=100 --maxa=100 --maxw=10 12" "tests\35" 35
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph 01" "tests\36" 36
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph 02" "tests\37" 37
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph 03" "tests\38" 38
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=50000 --minm=100000 04" "tests\39" 39
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=10000 --minm=100000 05" "tests\40" 40
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=5000 --minm=100000 06" "tests\41" 41
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=1000 --minm=100000 07" "tests\42" 42
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxn=30000 --minm=100000 08" "tests\43" 43
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --minn=50000 --maxm=100000 09" "tests\44" 44
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --minn=70000 --maxm=100000 10" "tests\45" 45
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxa=10000 --maxw=10000" "tests\46" 46
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxa=10000 --maxw=100" "tests\47" 47
call scripts\gen-input-via-stdout.bat "files\gen.exe --type=graph --maxa=10000 --maxw=10" "tests\48" 48
call scripts\gen-answer.bat tests\01 tests\01.a "tests" "example"
call scripts\gen-answer.bat tests\02 tests\02.a "tests" "example"
call scripts\gen-answer.bat tests\03 tests\03.a "tests" "s1"
call scripts\gen-answer.bat tests\04 tests\04.a "tests" "s1"
call scripts\gen-answer.bat tests\05 tests\05.a "tests" "s1"
call scripts\gen-answer.bat tests\06 tests\06.a "tests" "s1"
call scripts\gen-answer.bat tests\07 tests\07.a "tests" "s1"
call scripts\gen-answer.bat tests\08 tests\08.a "tests" "s1"
call scripts\gen-answer.bat tests\09 tests\09.a "tests" "s1"
call scripts\gen-answer.bat tests\10 tests\10.a "tests" "s2"
call scripts\gen-answer.bat tests\11 tests\11.a "tests" "s2"
call scripts\gen-answer.bat tests\12 tests\12.a "tests" "s2"
call scripts\gen-answer.bat tests\13 tests\13.a "tests" "s2"
call scripts\gen-answer.bat tests\14 tests\14.a "tests" "s2"
call scripts\gen-answer.bat tests\15 tests\15.a "tests" "s2"
call scripts\gen-answer.bat tests\16 tests\16.a "tests" "s2"
call scripts\gen-answer.bat tests\17 tests\17.a "tests" "s2"
call scripts\gen-answer.bat tests\18 tests\18.a "tests" "s2"
call scripts\gen-answer.bat tests\19 tests\19.a "tests" "s2"
call scripts\gen-answer.bat tests\20 tests\20.a "tests" "s2"
call scripts\gen-answer.bat tests\21 tests\21.a "tests" "s2"
call scripts\gen-answer.bat tests\22 tests\22.a "tests" "s2"
call scripts\gen-answer.bat tests\23 tests\23.a "tests" "s2"
call scripts\gen-answer.bat tests\24 tests\24.a "tests" "s3"
call scripts\gen-answer.bat tests\25 tests\25.a "tests" "s3"
call scripts\gen-answer.bat tests\26 tests\26.a "tests" "s3"
call scripts\gen-answer.bat tests\27 tests\27.a "tests" "s3"
call scripts\gen-answer.bat tests\28 tests\28.a "tests" "s3"
call scripts\gen-answer.bat tests\29 tests\29.a "tests" "s3"
call scripts\gen-answer.bat tests\30 tests\30.a "tests" "s3"
call scripts\gen-answer.bat tests\31 tests\31.a "tests" "s3"
call scripts\gen-answer.bat tests\32 tests\32.a "tests" "s3"
call scripts\gen-answer.bat tests\33 tests\33.a "tests" "s3"
call scripts\gen-answer.bat tests\34 tests\34.a "tests" "s3"
call scripts\gen-answer.bat tests\35 tests\35.a "tests" "s3"
call scripts\gen-answer.bat tests\36 tests\36.a "tests" "s4"
call scripts\gen-answer.bat tests\37 tests\37.a "tests" "s4"
call scripts\gen-answer.bat tests\38 tests\38.a "tests" "s4"
call scripts\gen-answer.bat tests\39 tests\39.a "tests" "s4"
call scripts\gen-answer.bat tests\40 tests\40.a "tests" "s4"
call scripts\gen-answer.bat tests\41 tests\41.a "tests" "s4"
call scripts\gen-answer.bat tests\42 tests\42.a "tests" "s4"
call scripts\gen-answer.bat tests\43 tests\43.a "tests" "s4"
call scripts\gen-answer.bat tests\44 tests\44.a "tests" "s4"
call scripts\gen-answer.bat tests\45 tests\45.a "tests" "s4"
call scripts\gen-answer.bat tests\46 tests\46.a "tests" "s4"
call scripts\gen-answer.bat tests\47 tests\47.a "tests" "s4"
call scripts\gen-answer.bat tests\48 tests\48.a "tests" "s4"

