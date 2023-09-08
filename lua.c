#include "lua.h"

static const luaL_Reg lualibs[] = {
        { "base",       luaopen_base },
        { NULL,         NULL }
};

lua_State *lua_init () {
    lua_State *l = luaL_newstate();
    luaL_openlibs(l);
    luaL_Reg *lib;
    for (lib = (luaL_Reg *)lualibs; lib->func != NULL; lib++) {
        lib->func(l);
        lua_settop(l, 0);
    }
    return l;
}

void lua_exec(lua_State *lua_state, char *file) {
    luaL_dofile(lua_state, file);
}

void lua_deinit(lua_State *lua_state) {
    lua_close(lua_state);
}
