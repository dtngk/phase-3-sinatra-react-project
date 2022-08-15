class Company < ActiveRecord::Base
    has_many :toys
    has_many :stores, through: :toys
end