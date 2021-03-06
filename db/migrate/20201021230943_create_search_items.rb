class CreateSearchItems < ActiveRecord::Migration[6.0]
  def change
    create_table :search_items do |t|
      t.string :title
      t.text :text
      t.text :link
      t.text :keywords

      t.timestamps
    end
  end

  def self.search(search)
    if search
      searchitem = SearchItem.search(keywords: search)
      if searchitem
        self.search(title: searchitem)
      else
        SearchItem.all
      end
    else
      SearchItem.all
    end
  end
end