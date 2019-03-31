class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :images, dependent: :destroy
  # validates :name, presence: true,length: { maximum: 40 }
  # validates :description, presence: true,length: { maximum: 1000 }
  # validates :category_id, presence: true
  # validates :brand_id, presence: true
  # validates :status, presence: true
  # validates :delivery_fee, presence: true
  # validates :delivery_date, presence: true
  # validates :delivery_method, presence: true
  # validates :prefecture_id, presence: true
  # validates :price, presence: true

  enum status: {
                  very_good: 0,
                  good:      1,
                  normal:    2,
                  bad:       3,
                  so_bad:    4,
                  very_bad:  5
  }
  enum delivery_fee: {
                  include:  0,
                  exclude:  1
  }
  enum delivery_date: {
                        one_to_two:    0,
                        two_to_three:  1,
                        four_to_seven: 2
  }
  enum delivery_method: {
                          undecided:           0,
                          easy_mercari_mail:   1,
                          yu_yu_mercari_mail:  2,
                          large_mericari_mail: 3,
                          postal_mail:         4,
                          letter_pack:         5,
                          regular_mail:        6,
                          kuroneko_yamato:     7,
                          yu_pack:             8,
                          click_post:          9,
                          yu_packet:           10
}
  enum size: {
                underXXS: 0,
                XS: 1,
                S: 2,
                M: 3,
                L: 4,
                XL: 5,
                two_XL: 6,
                three_XL: 7,
                four_XL: 8,
                FREE_SIZE: 9
  }


validates :name, presence: true
end
