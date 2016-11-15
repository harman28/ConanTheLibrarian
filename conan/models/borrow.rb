class Borrow < ActiveRecord::Base
	validates :borrower, presence: true
end