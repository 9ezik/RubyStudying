# Оригінальний об'єкт, який потрібно зберегти та відновити його стан
class Originator
  attr_accessor :state

  def initialize(state)
    @state = state
  end

  # Створення Знімка
  def create_memento
    Memento.new(@state)
  end

  # Відновлення стану об'єкту з Знімка
  def restore(memento)
    @state = memento.state
  end
end

# Знімок стану об'єкту
class Memento
  attr_reader :state

  def initialize(state)
    @state = state
  end
end

# Зберігач, що зберігає та забезпечує доступ до Знімків
class Caretaker
  attr_reader :mementos

  def initialize
    @mementos = []
  end

  # Додавання Знімка до списку збережених Знімків
  def add_memento(memento)
    @mementos.push(memento)
  end

  # Повернення останнього збереженого Знімка та його видалення зі списку
  def get_last_memento
    @mementos.pop
  end
end

# Приклад використання
originator = Originator.new("Стан 1")
puts "Початковий стан: #{originator.state}"

caretaker = Caretaker.new
caretaker.add_memento(originator.create_memento)

originator.state = "Стан 2"
puts "Поточний стан: #{originator.state}"

caretaker.add_memento(originator.create_memento)

originator.state = "Стан 3"
puts "Поточний стан: #{originator.state}"

# Відновлення до попереднього стану
last_memento = caretaker.get_last_memento
originator.restore(last_memento)
puts "Після відновлення: #{originator.state}"

# Відновлення до початкового стану
last_memento = caretaker.get_last_memento
originator.restore(last_memento)
puts "Після повного відновлення: #{originator.state}"
