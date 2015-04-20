cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(lua-cmake)

if(WIN32)
	include_directories("C:/local/include")
	if(CMAKE_CL_64)
		link_directories("C:/local/lib/x64")
	else(CMAKE_CL_64)
		link_directories("C:/local/lib/x86")
	endif(CMAKE_CL_64)
endif(WIN32)

add_subdirectory(src)