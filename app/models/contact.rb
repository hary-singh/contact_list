class Contact < ApplicationRecord
    has_many :notes
    has_one :address

end
