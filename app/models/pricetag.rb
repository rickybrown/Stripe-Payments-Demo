class Pricetag < ActiveRecord::Base
  validates_presence_of :amount, :description
  validates_uniqueness_of :amount, :description
  
  def amount=(a)
    b = a.split('.')
    write_attribute(:amount, a.to_s.include?('.') ? b.first + b.last : a)
  end
end