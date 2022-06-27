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
end
