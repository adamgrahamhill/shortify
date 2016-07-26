class AddStringUrlRefToWebsite < ActiveRecord::Migration[5.0]
  def change
    add_reference :websites, :string_url, foreign_key: true
  end
end
