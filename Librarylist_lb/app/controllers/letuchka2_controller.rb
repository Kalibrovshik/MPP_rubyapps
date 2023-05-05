class Letuchka2Controller < ApplicationController
    def letuchka 
        input = params[:inputtext]
        c1 = input.count('.')
        c2 = input.count('o')#[1].strip b.count(1)
        p c1
        p c2
        c3 = c1.modulo(c2)
        @output = ""
        if(c1 > c2)
            c1 = c1 - c3
            c1 = c1 / c2    
            while c2 >= 1
                @output += 'o'
                for i in 1..c1 do
                    @output += '.'
                end
                c2 = c2 - 1
            end
            for i in 1..c3 do
                @output += '.'
            end
        else
            c1 = c1 - c3
            c3 = c2 - c1
            while c2 >= 1
                @output += 'o'
                if c2 == c3
                    for i in 1..c1 do
                        @output += '.'
                    end
                end
                c2 = c2 - 1
            end
        end
    end
    def index

    end
end