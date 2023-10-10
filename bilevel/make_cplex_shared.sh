#!/bin/bash
# Builds dynamic CPLEX libraries from static libraries

# cplex directory
CPLEX_DIR="/Users/isma/Desktop/CPLEX_Studio2211"
echo $CPLEX_DIR

# paths to dynamic link libraries
# default: all 3 binaries assumed to lie in the same directory
TARGET_CPLEX="."
TARGET_CONCERT="."

LIB_CPLEX="${CPLEX_DIR}/cplex/lib/arm64_osx/static_pic/libcplex.a"
LIB_ILO_CPLEX="${CPLEX_DIR}/cplex/lib/arm64_osx/static_pic/libilocplex.a"
LIB_CONCERT="${CPLEX_DIR}/concert/lib/arm64_osx/static_pic/libconcert.a"

gcc -fpic -shared -Wl,"${LIB_CPLEX}" -o libcplex.so
gcc -fpic -shared -Wl,"${LIB_CONCERT}" -L"$TARGET_CPLEX" -lcplex -Wl,-rpath,"$TARGET_CPLEX" -o libconcert.so
gcc -fpic -shared -Wl,"${LIB_ILO_CPLEX}" -L"$TARGET_CPLEX" -lcplex -lconcert -Wl,-rpath,"$TARGET_CPLEX" -o libilocplex.so
