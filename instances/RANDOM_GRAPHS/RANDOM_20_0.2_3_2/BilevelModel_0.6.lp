\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj1: 2 x_a_0 + 3 x_a_1 + 2 x_a_2 + x_a_3 + x_a_4 + 2 x_a_5 + 2 x_a_6
       + 3 x_a_7 + x_a_8 + x_a_9 + x_a_10 + 3 x_a_11 + 1000000000 x_a_12
       + 1000000000 x_a_13 + 1000000000 x_a_14 + 1000000000 x_a_15
       + 1000000000 x_a_16 + 1000000000 x_a_17 + 1000000000 x_a_18
       + 1000000000 x_a_19 + 10000 x_a_20
Subject To
 c1:  y_a_12 + y_a_13 + y_a_14 + y_a_15 <= 2.4
 c2:  y_a_0 + y_a_1 + y_a_2 + y_a_3 + y_a_4 + y_a_19  = 0
 c3:  - y_a_12 - y_a_0 + y_a_5  = 0
 c4:  - y_a_5 + y_a_6 + y_a_7  = 0
 c5:  - y_a_6 + y_a_8 + y_a_9 + y_a_17  = 0
 c6:  - y_a_15 - y_a_8 + y_a_10  = 0
 c7:  - y_a_9  = 0
 c8:  - y_a_1  = 0
 c9:  - y_a_2 + y_a_18  = 0
 c10: - y_a_3  = 0
 c11: - y_a_7  = 0
 c12: - y_a_13 - y_a_4  = 0
 c13: - y_a_10 + y_a_11  = 0
 c14: - y_a_14 - y_a_11  = 0
 c15:  = 0
 c16:  = 0
 c17:  = 0
 c18: y_a_16  = 0
 c19:  = 0
 c20: y_a_12 + y_a_13 + y_a_14 + y_a_15 - y_a_20  = 0
 c21: - y_a_19 - y_a_17 - y_a_18 - y_a_16 + y_a_20  = 0
 c22: y_a_0 + 44 x_a_0 <= 44
 c23: y_a_1 + 27 x_a_1 <= 27
 c24: y_a_2 + 25 x_a_2 <= 25
 c25: y_a_3 + 48 x_a_3 <= 48
 c26: y_a_4 + 38 x_a_4 <= 38
 c27: y_a_5 + 38 x_a_5 <= 38
 c28: y_a_6 + 4 x_a_6 <= 4
 c29: y_a_7 + 16 x_a_7 <= 16
 c30: y_a_8 + 49 x_a_8 <= 49
 c31: y_a_9 + 34 x_a_9 <= 34
 c32: y_a_10 + 31 x_a_10 <= 31
 c33: y_a_11 + 44 x_a_11 <= 44
 c34: y_a_12 + 50000000 x_a_12 <= 50000000
 c35: y_a_13 + 50000000 x_a_13 <= 50000000
 c36: y_a_14 + 50000000 x_a_14 <= 50000000
 c37: y_a_15 + 50000000 x_a_15 <= 50000000
 c38: y_a_16 + 50000000 x_a_16 <= 50000000
 c39: y_a_17 + 50000000 x_a_17 <= 50000000
 c40: y_a_18 + 50000000 x_a_18 <= 50000000
 c41: y_a_19 + 50000000 x_a_19 <= 50000000
 c42: y_a_20 + 10000 x_a_20 <= 10000
Bounds
 0 <= y_a_12 <= 50000000
 0 <= y_a_13 <= 50000000
 0 <= y_a_14 <= 50000000
 0 <= y_a_15 <= 50000000
 0 <= y_a_0 <= 44
 0 <= y_a_1 <= 27
 0 <= y_a_2 <= 25
 0 <= y_a_3 <= 48
 0 <= y_a_4 <= 38
 0 <= y_a_19 <= 50000000
 0 <= y_a_5 <= 38
 0 <= y_a_6 <= 4
 0 <= y_a_7 <= 16
 0 <= y_a_8 <= 49
 0 <= y_a_9 <= 34
 0 <= y_a_17 <= 50000000
 0 <= y_a_10 <= 31
 0 <= y_a_18 <= 50000000
 0 <= y_a_11 <= 44
 0 <= y_a_16 <= 50000000
 0 <= y_a_20 <= 10000
 0 <= x_a_0 <= 1
 0 <= x_a_1 <= 1
 0 <= x_a_2 <= 1
 0 <= x_a_3 <= 1
 0 <= x_a_4 <= 1
 0 <= x_a_5 <= 1
 0 <= x_a_6 <= 1
 0 <= x_a_7 <= 1
 0 <= x_a_8 <= 1
 0 <= x_a_9 <= 1
 0 <= x_a_10 <= 1
 0 <= x_a_11 <= 1
 0 <= x_a_12 <= 1
 0 <= x_a_13 <= 1
 0 <= x_a_14 <= 1
 0 <= x_a_15 <= 1
 0 <= x_a_16 <= 1
 0 <= x_a_17 <= 1
 0 <= x_a_18 <= 1
 0 <= x_a_19 <= 1
 0 <= x_a_20 <= 1
Binaries
 x_a_0  x_a_1  x_a_2  x_a_3  x_a_4  x_a_5  x_a_6  x_a_7  x_a_8  x_a_9  x_a_10 
 x_a_11  x_a_12  x_a_13  x_a_14  x_a_15  x_a_16  x_a_17  x_a_18  x_a_19 
 x_a_20 
Generals
 y_a_12  y_a_13  y_a_14  y_a_15  y_a_0  y_a_1  y_a_2  y_a_3  y_a_4  y_a_19 
 y_a_5  y_a_6  y_a_7  y_a_8  y_a_9  y_a_17  y_a_10  y_a_18  y_a_11  y_a_16 
 y_a_20 
End
