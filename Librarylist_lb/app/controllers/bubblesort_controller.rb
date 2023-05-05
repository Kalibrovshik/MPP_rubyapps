class BubblesortController < ApplicationController
    def index 
        @mango = Array.new(10) { rand(1...9) }
        @outputarr = bubblesorting(@mango)

    end

    def bubblesorting(inputarray)
        arr = inputarray
        n = arr.length()
        swapped = true
        while swapped do
            swapped = false
            (n - 1).times do |i|
              if arr[i].to_i > arr[i + 1].to_i
                    arr[i], arr[i + 1] = arr[i + 1], arr[i]
                    swapped = true
              end
            end
            return arr
        end 
        return arr
    end
end