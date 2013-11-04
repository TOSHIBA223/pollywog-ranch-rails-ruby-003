class Pond < ActiveRecord::Base
  has_many :frogs, :dependent => :destroy
end