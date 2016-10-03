class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capturedimages
  accepts_nested_attributes_for :capturedimages, reject_if: proc { |attributes| attributes["image"].blank? }

  validates_presence_of :title, :catchcopy, :concept
end
