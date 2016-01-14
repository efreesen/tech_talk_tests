class Model
  def self.find(id)
    return nil unless id

    execute_query("select * from models where id = #{id}")
  end

  def update(id, attributes)
    record = id ? self.class.find(id) : false
    record.update_attributes(attributes) if record
  end

  private
  def execute_query(query)
    new
  end
end
