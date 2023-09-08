#include <stdio.h>
#include "lua.h"

/*
 * example of embedded LUA script
 */

int main (int argc, char **argv) {
    if (argc != 2) {
        printf("usage: %s <lua_script>", argv[0]);
        return 1;
    }
    lua_State *lua = lua_init();
    lua_exec(lua, argv[1]);
    lua_deinit(lua);
    return 0;
}
