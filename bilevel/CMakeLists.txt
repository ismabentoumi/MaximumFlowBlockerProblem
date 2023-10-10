cmake_minimum_required(VERSION 3.5)

project(codeExportBilevel VERSION 0.0.0 LANGUAGES CXX)

# Set C++11 as the standard
#set(CMAKE_CXX_STANDARD 11)

# Find Python libraries
#find_package(PythonLibs 3.6 EXACT REQUIRED)

# Find LEMON
find_package(LEMON REQUIRED)
if(LEMON_FOUND)
    include_directories(${LEMON_INCLUDE_DIRS})
    link_directories(${LEMON_LIBRARY_DIRS})
else()
    message(FATAL_ERROR "LEMON not found")
endif()



# Find boost
find_package(Boost REQUIRED)
if(Boost_FOUND)
    include_directories(/opt/homebrew/Cellar/boost/1.81.0_1/include)
    link_directories(/opt/homebrew/Cellar/boost/1.81.0_1/lib)
else()
    message(FATAL_ERROR "Boost not found")
endif()



# Set CPLEX include and library directories
set(CPLEX_DIR "/Users/isma/Desktop/CPLEX_Studio2211")
#set(CONCERT_DIR "/Users/isma/Desktop/CPLEX_Studio2211")

# Add source files to the executable target
add_executable(codeExportBilevel
    "${PROJECT_SOURCE_DIR}/src/main.cpp"
)



# Add include directories to the target
target_include_directories(codeExportBilevel
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
    /Users/isma/Desktop/CPLEX_Studio2211/cplex/include
    /Users/isma/Desktop/CPLEX_Studio2211/concert/include
    ${LEMON_INCLUDE_DIRS}
)

# Link against necessary libraries
target_link_libraries(codeExportBilevel
    ${LEMON_LIBRARIES}
    /Users/isma/Desktop/CPLEX_Studio2211/concert/lib/arm64_osx/static_pic/libconcert.a
    /Users/isma/Desktop/CPLEX_Studio2211/cplex/lib/arm64_osx/static_pic/libcplex.a
    /Users/isma/Desktop/CPLEX_Studio2211/cplex/lib/arm64_osx/static_pic/libilocplex.a
)
