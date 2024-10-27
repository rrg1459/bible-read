class CreateHistoricos < ActiveRecord::Migration[7.1]
  def change
    create_table :historicos do |t|
      t.integer :versiculo_id

      t.timestamps
    end
  end
end
