class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :cookbooks
  has_many :measurements
  has_many :reviews
  has_many :ingredients, through: :measurements
  has_many :steps
  belongs_to :user
  mount_uploader :image, ImageUploader

  scope :by_name, -> { order(:name) }
end
