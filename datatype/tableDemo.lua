---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by anye.
--- DateTime: 2025/3/3 16:04
--- 在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表


--- Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
function TableTest01()
    local tbl1 = {}
    local tbl2 = {"apple", "pear", "orange", "grape"}
    for i, v in ipairs(tbl1) do
        print(string.format("tbl1:key:%s,value:%s",i,v))
    end

    for i, v in ipairs(tbl2) do
        print(string.format("tbl2:key:%s,value:%s",i,v))
    end
end

---table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。
function TableTest02()
    local tbl1 = {}
    tbl1[1] = "apple"
    tbl1[2] = "pear"
    tbl1[3] = "orange"
    tbl1[4] = "grape"
    tbl1[5] = "banana"
    for i, v in pairs(tbl1) do
        print(string.format("tbl1:key:%s,value:%s",i,v))
    end

    print()
    print("*************************************************")
    print()

    local tbl2 = {}
    tbl2["one"] = "apple"
    tbl2["two"] = "pear"
    tbl2["three"] = "orange"
    tbl2["four"] = "grape"
    tbl2["five"] = "banana"
    for i, v in pairs(tbl2) do
        print(string.format("tbl2:key:%s,value:%s",i,v))
    end
end