class User < ApplicationRecord
  has_many :books, dependent: :destroy
  
  attachment :profile_image # ここを追加（_idは含めません）
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
