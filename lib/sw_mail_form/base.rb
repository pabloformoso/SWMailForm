module SwMailForm
  class Base
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    include ActiveModel::AttributeMethods

    attribute_method_prefix "clear_"
    attribute_method_suffix "?"
    
    # Definition for attributes
    def self.attributes(*names)
      attr_accessor *names
      define_attribute_methods names
    end
    
    # Definition to clear every attribute
    def clear_attribute(attribute)
      send("#{attribute}=", nil)
    end
    
    def attribute?(attribute)
      send(attribute).present?
    end
    
    def to_model
      self
    end
  end
end