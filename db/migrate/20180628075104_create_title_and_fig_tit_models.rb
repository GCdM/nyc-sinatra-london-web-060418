class CreateTitleAndFigTitModels < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
    end


    create_table :figure_titles do |t|
      t.integer :figure_id
      t.integer :title_id
    end
  end
end
