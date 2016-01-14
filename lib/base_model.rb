class BaseModel
  def initialize(attributes={})
    set_attributes(attributes)
  end

  def update_attributes(attributes)
    set_attributes(attributes)

    true
  end

  private
  def self.execute_query(query)
    id = query.split(' ').last.to_i
    new(id: id)
  end

  def set_attributes(attributes)
  end
end
