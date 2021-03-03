class Contact < ApplicationRecord
    # Associations
      # belongs_to
      # has_many
      # has_one
      # has_many :through
      # has_one :through 
      #  dependent
      has_many :notes, dependent: :destroy
      has_one :address, dependent: :destroy
    # Validations
      # rule
      # confirmation
        # check two fields and make sure they are the same field
      # inclusion
        # attr. values are include with in a set
        # class Coffee < ActiveRecord::Base
        #   validates :size, inclusion: { 
        #     in: %w(small medium large),
        #       message: "%{value} is not a valid size" 
        #   }
        # end
      # length
        # attr. length vals 
        # class Person < ActiveRecord::Base
        #   validates :name, length: { minimum: 2 }
        #   validates :bio, length: { maximum: 500 }
        #   validates :password, length: { in: 6..20 }
        #   validates :registration_number, length: { is: 6 }
        # end
      # numericality
        # ensure that it is a number rules 
        # class Player < ActiveRecord::Base
        #   validates :points, numericality: true
        #   validates :games_played, numericality: { only_integer: true }
        #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
        # end
      # presence 
        # make it exist
        # class Person < ActiveRecord::Base
        #   validates :name, :login, :email, presence: true
        # end
      # uniqueness
        # unique value in the record
        # class Account < ActiveRecord::Base
        #   validates :email, uniqueness: true
        # end
      validates :first_name, :last_name, :email, presence: true 
      validates :email, uniqueness: true 
      validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 21 }
    # Methods
     # class Methods
    #   class Person < ActiveRecord::Base
    #     # called on a class Person.by_first_name
    #     def self.by_first_name
    #       order(:first_name)
    #     end
    #   end
    # instance methods  
    # class Person < ActiveRecord::Base
    #   # called on an instance @person.full_name
    #   def full_name
    #    "#{self.first_name} {self.last_name}"
    #   end
    # end
  end