class ItemsController < ApplicationController
  def index
    @type = Item.pluck(:type_id)
    @value = Item.pluck(:value)
    @aggregate = aggregateType(@type)
    @sum = sumType(@value)
  end

  def aggregateType(array)
    result = [["支出",0],["収入",0],["貯金",0]]
    array.each do |i|
      if i == 1
        result[0] += 1
      elsif i == 2
        result[1] += 1
      else 
        result[2] += 1
      end
    end
    return result
  end

  def sumType(array)
    result = [["支出",0],["収入",0],["貯金",0]]
    array.each do |i|
      if i == nil
        result[2][1] += 1
      else 
        result[1][1] += 1
      end
    end
    result[0][1] = array.length 
    return result
  end

  def show
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :date,
      :value,
      :category_id,
      :type_id
    ).merge(user_id: current_user.id)
  end

end
