class Patient
  attr_reader :name, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end
end

# roberto = Patient.new(age: 18, name: 'Roberto')


# roberto = Patient.new({ age: 18, name: 'Roberto' })
# room123 = Room.new(number: 123, capacity: 10)

# room123.add_patient(roberto)

# room123.patients # => [<roberto>]
# roberto.room # => <room123>
