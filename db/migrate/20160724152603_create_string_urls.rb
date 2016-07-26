class CreateStringUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :string_urls do |t|
      t.string :url_string

      t.timestamps
    end
  end
end
