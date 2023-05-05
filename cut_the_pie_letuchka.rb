s = ""
#s = "....o....o...o..o.....o..."
while s != "exit"
    s = gets.chomp
    c1 = s.count('.')
    c2 = s.count('o')#[1].strip b.count(1)
    p c1
    p c2
    c3 = c1.modulo(c2)
    if(c1 > c2)
        c1 = c1 - c3
        c1 = c1 / c2    
        while c2 >= 1
            p ('o')
            for i in 1..c1 do
                p ('.')
            end
            c2 = c2 - 1
        end
        for i in 1..c3 do
            p ('.')
        end
    else
        c1 = c1 - c3
        c3 = c2 - c1
        while c2 >= 1
            p ('o')
            if c2 == c3
                for i in 1..c1 do
                    p ('.')
                end
            end
            c2 = c2 - 1
        end
    end
end