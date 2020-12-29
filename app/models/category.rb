class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '食費' },
    { id: 3, name: '外食費' },
    { id: 4, name: '日用雑貨費' },
    { id: 5, name: '交通費・車両費' },
    { id: 6, name: '住居費' },
    { id: 7, name: '光熱費' },
    { id: 8, name: '水道費' },
    { id: 9, name: '通信費' },
    { id: 10, name: 'ファッション・美容' },
    { id: 11, name: 'レジャー費' },
    { id: 12, name: '医療費' },
    { id: 13, name: '貯金' },
    { id: 14, name: '給与' },
    { id: 15, name: '賞与' },
    { id: 16, name: '臨時収入' },
    { id: 17, name: '事業所得' },
    { id: 18, name: 'その他' }
  ]
 end
