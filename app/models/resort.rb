class Resort < ApplicationRecord
  belongs_to :user
  belongs_to :airport
  has_many :feature_resorts
  has_many :features, through: :feature_resorts


  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # validates :name, presence: true
  # validates :continent, presence: true
  # validates :country, presence: true
  # validates :address, presence: true
  # validates :photo, presence: true
  # validates :description, presence: true
  # validates :user_id, presence: true
  # validates :airport_id, presence: true
  # validates :website, presence: true

end
