class CreateBotstrap4heros < ActiveRecord::Migration[5.2]
  def change
    create_table :botstrap4heros do |t|
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
