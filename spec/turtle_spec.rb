require 'Turtle'

describe Turtle do
  describe "::new" do
    subject {Turtle.new}

    it "is initialized" do
      expect(subject.direction).to eq('N')
      expect(subject.current_position).to eq([0,0])
    end
  end

  describe "#go" do
    it "moves and updates the direction of the turtle: Input: F(3),L,F(2),R,F(1); Output: (-2,4)" do
      t = Turtle.new
      t.go(3)
      t.go('L')
      t.go(2)
      t.go('R')
      t.go(1)
      expect(t.current_position).to eq [-2,4]
    end


  end
end