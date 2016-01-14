class Model < BaseModel
  attr_reader :id, :name

  def self.find(id)
    return nil unless id

    execute_query("select * from models where id = #{id}")
  end

  def update(id, attributes)
    record = id ? self.class.find(id) : false
    record.update_attributes(attributes) if record
  end

  private
  def set_attributes(attributes)
    @id = attributes[:id] if attributes[:id]
    @name = attributes[:name] if attributes[:name]
  end
end
