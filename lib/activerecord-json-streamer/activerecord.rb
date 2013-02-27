class ActiveRecord::Base
  def self.to_json_stream stream, json_options={}
    self.find_each do |element|
      stream.write element.to_json(json_options)
    end
  end
end