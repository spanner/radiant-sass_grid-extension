class AssetSizes < ActiveRecord::Migration
  def self.up
    aat = (Radiant::Config['assets.additional_thumbnails'] || '').split(',')
    (1..12).each do |w|
      outerwidth = (w * 80)
      innerwidth = outerwidth - 20
      aat << "grid_#{w}=#{innerwidth}x#{innerwidth * 3}>"
      aat << "grid_#{w}_square=#{innerwidth}x#{innerwidth}#"
      aat << "grid_#{w}_bg=#{outerwidth}x#{outerwidth * 3}#"
    end
    Radiant::Config['assets.additional_thumbnails'] = aat.join(',')
  end

  def self.down
  end
end
