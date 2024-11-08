class CreateTrainlineBots < ActiveRecord::Migration[7.1]
  def change
    create_table :trainline_bots do |t|

      t.timestamps
    end
  end
end
