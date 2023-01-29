class Todo < ApplicationRecord
  validates :title, presence: true
  validates :contents, presence: true
end
