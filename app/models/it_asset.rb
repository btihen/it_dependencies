class ItAsset
  include Neo4j::ActiveNode
  property :category, type: String
  property :name, type: String, constraint: :unique

  has_many :out, :needs, type: :NEEDS, model_class: :ItAsset

  IT_ASSET_CATEGORIES = %w[data_center networking hardware hosting os_platform sw_platfrom it_facing_service user_facing_service]

  validates :category, :presence => true, :inclusion=> { :in => IT_ASSET_CATEGORIES }
  validates :name, :presence => true

end
