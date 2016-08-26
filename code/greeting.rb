def greeting
    greeting = ARGV[0]
    ARGV.each_with_index do |val, index|
        if index != 0
            name = val
            puts "#{greeting}, #{name}!"
        end
    end
end

greeting