def top_words(text)
  # Удаляем пунктуацию и || | из текста
  text = text.gsub(/[^\w\s]/, '').gsub(/\|{1,2}/, '')

  # Составляем хэш-таблицу, где ключ - слово, а значение - количество его вхождений
  word_counts = Hash.new(0)
  text.split.each { |word| word_counts[word.downcase] += 1 }

  # Сортируем хэш-таблицу по убыванию количества вхождений слов
  sorted_word_counts = word_counts.sort_by { |word, count| -count }

  # Возвращаем топ-3 самых встречающихся слов
  sorted_word_counts[0..2].map { |word, count| word }
end

text = File.read('text.txt')

puts top_words(text)