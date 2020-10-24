require 'pry'

def my_all?(collection)
    counter = 0
    values = []
    while counter < collection.length
        values << yield(collection[counter])
        counter += 1
    end
    if values.include?(false)
        false
    else
        true
    end
end