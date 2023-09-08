function string_split (s, delim)
    if delim == nil then
        delim = "%s"
    end
    local t = { }
    for word in string.gmatch(s, "([^"..delim.."]+)") do
        table.insert(t, word)
    end
    return t
end


function file_contents (filename)
    local tbl = { }
    fp = io.open(filename, 'r')
    for l in fp:lines('*l') do
        table.insert(tbl, l)
    end
    fp:close()
    return tbl
end


function table_explode (tbl, delim)
    local word_tbl = { }
    for i = 1, rawlen(tbl), 1 do
        local words = string_split(tbl[i], delim)
        table.insert(word_tbl, words)
    end
    return word_tbl
end


function print_table2d (prefix, tbl, suffix)
    if suffix == nil then
        suffix = '\n'
    end
    for i = 1, rawlen(tbl), 1 do
        for j = 1, rawlen(tbl[i]), 1 do
            io.write(prefix, tbl[i][j], suffix)
        end
    end
end


function table_flatten2d (tbl)
    local list = { }
    for i = 1, rawlen(tbl), 1 do
        for j = 1, rawlen(tbl[i]), 1 do
            table.insert(list, tbl[i][j])
        end
    end
    return list
end


utils = {
    string_split = string_split,
    file_contents = file_contents,
    table_explode = table_explode,
    table_split = table_explode,
    print_table2d = print_table2d,
    table_flatten2d = table_flatten2d
}
