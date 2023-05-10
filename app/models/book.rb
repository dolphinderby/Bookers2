class Book < ApplicationRecord
  has_one_attached :profile_image
  belongs_to :user

  def book
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end

end
