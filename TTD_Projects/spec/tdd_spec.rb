require 'tdd.rb'
require 'rspec'

RSpec.describe Array do
  describe "::my_uniq" do
    subject(:a){ [1, 2, 1, 3, 3] }
    it "returns the unique elements of the array without duplicates" do
      expect(Array.my_uniq(a).sort).to eq([3,2,1].sort)
    end
    
    it "returns the elements in the order in which they first appear" do
      expect(Array.my_uniq(a)).to eq [1,2,3]
    end
  end

  describe "#two_sum" do
    subject(:a) { [-1, 0, 2, -2, 1] }
      it "returns the indices of pairs of elements that sum to zero" do
        expect(a.two_sum.sort).to eq [[2,3],[0,4]].sort
      end

      it "should return pairs sorted smaller index before bigger index" do
        expect(a.two_sum).to eq [[0,4],[2,3]]
      end

  end

  describe "#my_transpose" do
    subject(:a) { [ [0,1,2], [3,4,5], [6,7,8] ] }
      it "should maintain the same dimensions" do
        expect(a.my_transpose.length).to eq a.length
        expect(a.my_transpose.first.length).to eq a.length
      end

      it "should transpose the rows/columns" do
        expect(a.my_transpose).to eq a.transpose
      end


  end

  describe "#stock_picker" do
    subject(:s){[3,4,6,1,10,12]}
    it "returns the pair of indices with greatest positive difference" do
      expect(s.stock_picker).to eq [3,5]
    end
  end

  describe Towers do
    subject(:t) { Towers.new }
    describe "#move" do
      it "accepts a start and end tower" do
        #expect to receive :move with some parameters that represent the towers
        expect { t.move(1)}.to raise_error(ArgumentError)
      end

      #should remove first disc of start, not any others

      #should add disc only to the front of the stack
      
    end
  
  end

end