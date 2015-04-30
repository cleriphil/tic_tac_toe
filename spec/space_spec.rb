require('rspec')
require('space')
require('player')

describe(Space) do
  # before() do
  #   Space.clear()
  # end

  describe("#x_coordinate") do
    it("returns the space's x_coordinate") do
      test_space = Space.new({ :x => 1, :y => 2 })
      expect(test_space.x_coordinate()).to(eq(1))
    end
  end

  describe("#y_coordinate") do
    it("returns the space's y_coordinate") do
      test_space = Space.new({ :x => 1, :y => 2 })
      expect(test_space.y_coordinate()).to(eq(2))
    end
  end

  # describe(".create") do
  #   it("")
  # end

  # describe("#find_player") do
  #   it("returns an empty hash that will store marked spaces") do
  #     test_player = Player.new({ :mark => "X" })
  #     # test_player2 = Player.new({ :mark => "O" })
  #     test_space = Space.new({ :x => 1, :y => 2 })
  #     # test_space.mark_by(test_player2)
  #     expect(test_space.marked_by()).to(eq({}))
  #   end
  # end

  describe("#mark_by") do
    it("saves to a hash of saved marked space") do
      test_player = Player.new({ :mark => "X" })
      test_space = Space.new({ :x => 1, :y => 2 })
      test_space.mark_by(test_player)
      expect(test_space.marked_by()).to(eq(test_player))
    end
  end

end
