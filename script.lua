dofile('utils.lua')


lines = { }
words = { }

lines = utils.file_contents('test.txt')
words = utils.table_explode(lines)
wordlist = utils.table_flatten2d(words)

for i = 1, rawlen(wordlist), 1 do
    io.write(wordlist[i], '\n')
end

