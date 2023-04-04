#Take a list as an array
#Divide the list into two arrays
#Keep doing it until you have individual items in their own arrays
#Take two arrays, read the first element of each.
#Append the smaller of the two into a larger array, then the larger
#Repeat the second element and so on.
#Return the sorted array

def merge_sort(array)
    if array.length == 1 || array.length == 0
        return array
    else
        first_array = array.slice(0, (array.length) / 2)
        second_array = array.slice((array.length) / 2, array.length)
        first_array = merge_sort(first_array)
        second_array = merge_sort(second_array)
        return merge(first_array, second_array)
    end
end

def merge(first_array, second_array)
    container = []
    until first_array.empty? || second_array.empty? do
        if first_array[0] <= second_array[0]
            container << first_array.shift
        else first_array[0] > second_array[0]
            container << second_array.shift
        end
    end
    unless first_array.empty?
        container.append(first_array)
    end
    unless second_array.empty?
        container.append(second_array)
    end
    container.flatten
end

test_array = [4,3,1,2,6,5,7,10,9,8,11,15,13,14,12]

x = merge_sort(test_array)

print x