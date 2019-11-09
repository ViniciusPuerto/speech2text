    a = "Kairon é muito loko"
    b = "Kairon é muito loko" 
    # longer = [a.size, b.size].max
    # same = a.each_char.zip(b.each_char).select { |a,b| a == b }.size
    # percent = (longer - same) / a.size.to_f
    # puts 100 - percent


    require 'fuzzystringmatch'

    jarow = FuzzyStringMatch::JaroWinkler.create( :native )
    p jarow.getDistance(  a,      b )