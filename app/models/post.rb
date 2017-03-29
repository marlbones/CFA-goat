class Post < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged


  def slug_candidates
[
  :content,
  [:content, :user_id]
]
  end
end
