if Spree.user_class
  Spree.user_class.class_eval do
    
    def activate_key
      self.key_is_valid = true
      save!
    end
    
    def invalidate_key
      self.key_is_valid = false
      save!
    end
    
    def generate_key
      self.product_key = "generated product key goes here"
    end
    
    def reset_activation_count
      self.activation_count = 0
    end
    
    def increment_activation_count
      if self.activation_count < 5
        self.activation_count += 1
      end
    end

    def decrement_activation_count
      if self.activation_count > 0
        self.activation_count -= 1
      end
    end
    
    def valid_key
      return self.key_is_valid
    end

  end
end