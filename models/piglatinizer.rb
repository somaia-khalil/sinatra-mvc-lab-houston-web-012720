class PigLatinizer
    
    def piglatinize(words)
        wordss = words.split(" ")
        result = wordss.map do |word|
            latin(word)
        end
        result.join(" ") 

    end
    def latin(word)
        parts = word.split(/([AEIOUaeiou].*)/)
        if  parts[0] == ""
            "#{parts[1]}way" 
            elsif(parts[1])
            "#{parts[1]}#{parts[0]}ay"
            else 
               "#{parts[0]}way" 
            end
    end 
end 