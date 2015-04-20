
set(lua_BASE_SRCS
	lapi.c
	lauxlib.c
	lbaselib.c
	lbitlib.c
	lcode.c
	lcorolib.c
	lctype.c
	ldblib.c
	ldebug.c
	ldo.c
	ldump.c
	lfunc.c
	lgc.c
	linit.c
	liolib.c
	llex.c
	lmathlib.c
	lmem.c
	loadlib.c
	lobject.c
	lopcodes.c
	loslib.c
	lparser.c
	lstate.c
	lstring.c
	lstrlib.c
	ltable.c
	ltablib.c
	ltm.c
	lundump.c
	lutf8lib.c
	lvm.c
	lzio.c
	)

add_definitions("-DLUA_BUILD_AS_DLL")


add_library(liblua SHARED ${lua_BASE_SRCS})
add_executable(lua lua.c)
add_executable(luac luac.c ${lua_BASE_SRCS})

target_link_libraries(lua liblua)