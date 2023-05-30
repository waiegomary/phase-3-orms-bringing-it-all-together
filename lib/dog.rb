class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @breed = attributes[:breed]
  end

  def self.create_table
    # Your code to create the dogs table in the database
  end

  def self.drop_table
    # Your code to drop the dogs table from the database
  end

  def save
    # Your code to save the dog instance to the database and set the id attribute
  end

  def self.create(attributes = {})
    dog = Dog.new(attributes)
    dog.save
    dog
  end

  def self.new_from_db(row)
    attributes = {
      id: row[0],
      name: row[1],
      breed: row[2]
    }
    Dog.new(attributes)
  end

  def self.all
    # Your code to retrieve all dog records from the database and return an array of Dog instances
  end

  def self.find_by_name(name)
    # Your code to retrieve a dog record from the database by name and return a Dog instance
  end

  def self.find(id)
    # Your code to retrieve a dog record from the database by id and return a Dog instance
  end
end
