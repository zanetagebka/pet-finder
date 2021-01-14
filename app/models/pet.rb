class Pet < ApplicationRecord
  acts_as_taggable_on :tags

  enum gender: %i[male female]
  enum breed: { cat: 0, dog: 1 }

  validates_presence_of :name, :age, :description, :gender, :breed

  has_many_attached :images
end
