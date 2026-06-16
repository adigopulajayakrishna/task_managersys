class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy

  validates :name, presence: true
  validates :priority, inclusion: { in: %w[H M L] }
end
