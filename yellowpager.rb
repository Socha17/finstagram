





def yellow_pager(word)

  word.split("").each do |letter|
    puts letter
    if word.include?("a") || word.include?("b") || word.include?("c")
      puts 2

    elsif word.include?("d") || word.include?("e") || word.include?("f")
      puts 3

    elsif word.include?("g") || word.include?("h") || word.include?("i")
      puts 4
    end

  end


end


yellow_pager("mattsocham")
