class Animal < ApplicationRecord
  # TODO: create validvation to only allow one animal of the same name.
  validates_uniqueness_of :name, case_sensitive: false
  
  #validate :checks_if_name_starts_with_a

  #def checks_if_name_starts_with_a
	#errors.add(:name, 'Name has some error we want')
  #end
end
