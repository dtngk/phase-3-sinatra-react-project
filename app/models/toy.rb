class Toy < ActiveRecord::Base
    has_many :stores
    belongs_to :company
end