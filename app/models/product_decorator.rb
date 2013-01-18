Spree::Product.class_eval do
    def out_of_stock?
        variants.empty? ? count_on_hand == 0 : variants.all?{|v| v.count_on_hand == 0}
    end
end
