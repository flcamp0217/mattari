class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '' },
    { id: 2, name: '食料' },
    { id: 3, name: '生活費' },
    { id: 4, name: 'その他' },
    { id: 5, name: 'メモのみ' },
  ]

  include ActiveHash::Associations
  has_many :items

end
