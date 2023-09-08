#ifndef LUA_EMBED_LUA_H
#define LUA_EMBED_LUA_H
#include <lua/lua.h>
#include <lua/lauxlib.h>
#include <lua/lualib.h>
#include "lua.h"

lua_State *lua_init ();
void lua_exec(lua_State *lua_state, char *file);
void lua_deinit(lua_State *lua_state);

#endif //LUA_EMBED_LUA_H
