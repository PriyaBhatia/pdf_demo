require 'prawn'
class User < ActiveRecord::Base
  attr_accessible :eamil, :name
end
