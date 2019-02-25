class CreateSitePages < ActiveRecord::Migration[5.2]
  def change
    create_table :site_pages do |t|

      t.timestamps
    end
  end
end
