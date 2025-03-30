class Contact < ActiveRecord::Base
  # Validations - ensure that these fields are present
  validates :name, presence: true
  validates :email, presence: true
  # Validate proper email format
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :comments, presence: true
end