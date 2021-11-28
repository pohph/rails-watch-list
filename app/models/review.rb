class Review < ApplicationRecord
  belongs_to :list, #can call @list.reviews
end
