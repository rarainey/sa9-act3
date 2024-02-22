require 'rct_sqr_cube'

RSpec.describe Rectangle do
    let(:rectangle) {Rectangle.new(3, 2)}

    describe "#area" do
        it "computes the area of the rectangle" do
            expect(rectangle.area).to eq(6)
        end
    end
        
    describe "#perimeter" do
        it "computes the perimeter of the rectangle" do
            expect(rectangle.perimeter).to eq(10)
        end
    end 
end

RSpec.describe Square do
    let(:square) {Square.new(3)}

    describe "#area" do
        it "computes the area of the square" do
            expect(square.area).to eq(9)
        end
    end
        
    describe "#perimeter" do
        it "computes the perimeter of the square" do
            expect(square.perimeter).to eq(12)
        end
    end 
end

RSpec.describe Cube do
    let(:cube) {Cube.new(3)}

    describe "#surface_area" do
        it "computes the surface area of the cube" do
            expect(cube.surface_area).to eq(54)
        end
    end

    describe "#volume" do
        it "computes the volume of the cube" do
            expect(cube.volume).to eq(27)
        end
    end
end