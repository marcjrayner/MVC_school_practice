require_relative('../db/sql_runner.rb')

class House
  attr_accessor :name, :logo_url
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses
    (
      name,
      logo_url
    )
    VALUES
    (
      $1, $2
    )
    RETURNING *"
    values = [@name, @logo_url]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE houses
    SET
    (
      name,
      logo_url


    ) =
    (
      $1, $2
    )
    WHERE id = $3"
    values = [@name,  @logo_url, @id]
    SqlRunner.run( sql, values )
  end

  def delete()
    sql = "DELETE FROM houses
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run( sql )
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run( sql )
    result = houses.map { |student| Student.new( student)}
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM houses
    WHERE id = $1"
    values = [id]
    house = SqlRunner.run( sql, values )
    result = House.new( house.first )
    return result
  end






end
