class Charge < ActiveRecord::Base
  attr_accessor :amount, :description, :email
  validates_presence_of :amount, :description, :email
  validates_numericality_of :amount
end