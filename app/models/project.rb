class Project < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_one_attached :thumbnail
  has_many :comments, as: :commentable
  has_many :perks, dependent: :destroy
  accepts_nested_attributes_for :perks, allow_destroy: true, reject_if: proc { |attr| attr['title']
    .blank? }
end
