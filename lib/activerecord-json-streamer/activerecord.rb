class ActiveRecord::Base
  def self.stream_json stream, json_options={}
    self.find_each do |element|
      stream.write element.to_json(json_options)
    end
  end
end