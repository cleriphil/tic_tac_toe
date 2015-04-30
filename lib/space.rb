class Space
  attr_reader(:x_coordinate, :y_coordinate)
  # @@marked_by = {}
  define_method(:initialize) do |attributes|
    @x_coordinate = attributes.fetch(:x)
    @y_coordinate = attributes.fetch(:y)
    # @marked_by = []
  end

  # define_singleton_method(:marked_by) do
  #   @
  # end
  # # define_method(:find_player) do
  # #   @@marked_by.fetch(self)
  # # end
  #
  # define_method(:mark_by) do |player|
  #   # @@marked_by.store(self, player)
  #   @marked_by = @marked_by.push(player)
  # end

  # define_singleton_method(:clear) do
  #   @@marked_by = {}
  # end

end
