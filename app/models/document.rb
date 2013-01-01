class Document < ActiveRecord::Base
  include RuFindit::Tokenable
  include RuFindit::Model::Searcher

  attr_accessible :name, :body

  indexable do
    indexes :body
  end

end
