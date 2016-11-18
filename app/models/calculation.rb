class Calculation < ActiveRecord::Base
    def self.total
    # your logic here
    Calculation.sum("amount")
    end
    
    def self.dept
    # your logic here
    # Account.having("sum(amount) < 0 ").sum(:amount ) 
    Calculation.where("amount < ?", 0).sum("amount")
    end
end
