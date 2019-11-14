class Mission < ApplicationRecord
  belongs_to :administrator
  belongs_to :task
end
