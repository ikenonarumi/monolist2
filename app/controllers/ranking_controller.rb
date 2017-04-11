class RankingController < ApplicationController
  def have
    item_ids = Have.item_ids
    @items = Item.ranking_items(item_ids)
  end

  def want
    item_ids = Want.item_ids
    @items = Item.ranking_items(item_ids)
  end
end
