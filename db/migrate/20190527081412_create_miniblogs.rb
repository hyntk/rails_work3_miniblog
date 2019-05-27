class CreateMiniblogs < ActiveRecord::Migration[5.1]
  def change
    create_table :miniblogs do |t|
      t.text:content
    end
  end
end
