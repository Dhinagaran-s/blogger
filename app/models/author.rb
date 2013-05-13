class Author < ActiveRecord::Base

  has_many :articles

  authenticates_with_sorcery!
  # attr_accessible :title, :body
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end
