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

# Пример использования:
text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

puts top_words(text)