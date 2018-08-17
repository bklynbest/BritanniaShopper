require 'rails_helper'

RSpec.describe Product, type: :model do
    
  subject {
    described_class.new(name: "Anything", description: "Lorem ipsum",
                      price: 10.00, image:"image.jpg")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end
  

  it "this still works without an image" do
    subject.image = nil
    expect(subject).to be_valid
  end
end