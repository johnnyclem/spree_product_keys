if Spree.user_class
  Spree.user_class.class_eval do
    
    def activate_product_key
      self.key_is_valid = true
      save!
    end
    
    def invalidate_product_key
      self.key_is_valid = false
      self.product_key = ""
      save!
    end
    
    def generate_product_key!
      self.product_key = SecureRandom.hex(24)
      save!
    end
    
    def reset_activation_count
      self.activation_count = 0
      save!
    end
    
    def increment_activation_count
      if self.activation_count < 5
        self.activation_count += 1
        save!
      end
    end

    def decrement_activation_count
      if self.activation_count > 0
        self.activation_count -= 1
        save!
      end
    end
    
    def valid_product_key
      return self.key_is_valid
    end

  end
end