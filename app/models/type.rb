class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '支出' },
    { id: 3, name: '収入' },
    { id: 4, name: '貯金' }
  ]
 end