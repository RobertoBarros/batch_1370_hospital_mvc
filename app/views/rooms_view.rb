class RoomsView
  def ask_number
    puts 'Enter the room number:'
    gets.chomp.to_i
  end

  def ask_capacity
    puts 'Enter the room capacity:'
    gets.chomp.to_i
  end

  def ask_index
    puts 'Enter room index:'
    gets.chomp.to_i - 1
  end

  def list(rooms)
    puts 'Rooms List'
    puts '-' * 30
    rooms.each_with_index do |room, index|
      puts "#{index + 1} - Number #{room.number}: #{room.capacity} capacity | Patients: #{room.patients.map { |p| p.name }.join(',')}"
    end
    puts '-' * 30
  end
end
