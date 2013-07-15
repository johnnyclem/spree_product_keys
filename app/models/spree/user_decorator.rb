if Spree.user_class
  Spree.user_class.class_eval do
    
    def activate_key
      self.key_is_valid = true
      save!
    end
    
    def valid_key
      return self.key_is_valid
    end

  end
end