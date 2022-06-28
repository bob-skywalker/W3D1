class Array
    def my_each(&prc)
        self.length.times do |i|
            prc.call(self[i])
        end
    self
    end

    def my_select(&prc)
         newArr=[]
         self.my_each do |num|
            if prc.call(num) == true
                newArr << num
            end
         end
         newArr
    end

    def my_reject(&prc)
        new_arr = []
        self.my_each do |num|
            if prc.call(num) != true
                new_arr << num
            end
        end
        new_arr
    end

    def my_any?(&prc)
        self.my_each do |el|
            if prc.call(el) == true
                return true
            end
        end
        return false
    end

    def my_all?(&prc)
        self.my_each do |el|
            if prc.call(el) == false
                return false
            end
        end
        return true
    end

    def my_flatten
        new_arr = []
        self.my_each do |arr|
            if arr.is_a?(Array)
                new_arr += arr.my_flatten
            else
                new_arr << arr
            end
        end
        new_arr
    end

    def my_zip(*arg)  #[[ 4, 5, 6 ],[ 7, 8, 9 ]]
        new_arr = Array.new(self.length){Array.new()}

        arg.each do |arr|

        (0...self.length).my_each do |i|
            (0...self.length).my_each do |j|
                new_arr[j][i] <<
    end
end

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].my_zip(a, b)

# => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# [[3,21,],131].my_flatten


# [1,2,3] {|num| num > 1 } #true
# [1,2,3] {|num| num == 4 } #false
