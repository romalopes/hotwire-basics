class Comment < ApplicationRecord
  after_create_commit do
    broadcast_prepend_to "comments"
  end
end
