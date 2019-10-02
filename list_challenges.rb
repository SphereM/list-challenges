



def threed(list)
    count = 0
    (list.size-1).times do |i|
        if list[i] == 3 
            count += 1
            if list[i+1] == list[i]
                return false
            end
        elsif list[i] == 3 && list[i+1] == 3
            return false
        end
    end
    if list[list.size] = 3
        count +=1
    end
    if count == 3
        return true
    else
        return false
    end
end



# puts threed([2,4,3,2,3,5,7,3])
# puts threed([2,4,3,2,3,5,3,7,3])
# puts threed([2,4,3,3,3,5,3,3])


def same_first_last(list)
    n = list.size
    
    if list[0] == list[n-1] && n >= 1 
        return true
    else
        return list[n-1]
        return false
    end
end


# puts same_first_last([3,6,2,8,4,8,1,7,3,9,2,1])
# puts same_first_last([3,6,2,8,4,8,1,7,3,9,4,3])
# puts same_first_last([3])


def get_sandwich(str)
    b = "bread"
    count = 0
    countb = 0
    str.size.times do |i|
        if str[i..(i+4)] == b
            countb = i - 1
        end 
    end
    str.size.times do |i| 
        if str[i..(i+4)] == b
            count = i + 5
            return str[count..(countb)]
        end 
    end
end



# puts get_sandwich("breadrockbuttercreambread")
# puts get_sandwich("skybreadbutterbreadsky")
# puts get_sandwich("skybreadbreadbreadsky")



def shift_left(list)
    overflow = 0
    overflow = list[0]
    point = 0
    list.size.times do
        list[point] = list[point + 1]
        point += 1
    end
    list[list.size - 1] = overflow
    return list
end



# puts shift_left([6,2,5,3])
# puts shift_left([6,2,5,3,4,7,9,1])


def can_balance(list)
    a = 0
    sum1 = 0
    sum2 = 0
    b = list[0]
        list.size.times do |i|
            a = a + list[i]
            sum2 = a - b
            sum1 = a - sum2
            if sum2 == sum1
                return true
            end
            #b += list[i+1]
        end
    return sum2
end


#puts can_balance([6,2,3,5])
#puts can_balance([10,2,3,5])
#puts can_balance([1,7,2,3,5,2])

def middle_way(list1, list2)
    mid = list1.size / 2 
    mid2 = list2.size / 2
    return [list1[mid], list2[mid2]]
end


puts middle_way([2,4,6,7,1], [3,7,4])
puts middle_way([3,2,5,8,0], [1,9,0,4,6,8,3,2,7])








