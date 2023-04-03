#Fibonacci sequence non-recursive
#take an input n that represents the nth number of the Fibonacci sequence
#Start with n = 0 -> 0 and n = 1 -> 1 in an array.
#Add the last two numbers of this array and append it to itself
#Loop this n - 2 times to get an array of length n.
#Return the array

def fibonacci(num)
    fibonacci_sequence = [0, 1]
    (num - 2).times do |number|
        fibonacci_sequence.push(fibonacci_sequence[-1] + fibonacci_sequence[-2])
    end
    fibonacci_sequence
end

#puts fibonacci(8)

#fibonacci sequence recursive
#take an input n that represents the nth number of the sequence
#and an input sequence with a default of [0, 1]
#Start from bottom to top. Keep adding the last two digits until the array is num length

def fib_recursive(num, sequence = [0, 1])
    if sequence.length == 8
        return sequence
    else
        fib_recursive(num, sequence.push(sequence[-1] + sequence[-2]))
    end
end

puts fib_recursive(8)