require 'rails_helper'

describe "An event" do
  it "is free if the price is $0" do
    event = Event.new(price: 0)
    
    expect(event).to be_free
  end
  
  it "is not free if the price is non-$0" do
    event = Event.new(price: 10)
    
    expect(event).not_to be_free    
  end
  
  it "requires a name" do
    event = Event.new(name: "")
    
    event.valid? # populates errors
    
    expect(event.errors[:name].any?).to eq(true)
  end
  
  it "requires a description" do
    event = Event.new(description: "")
    
    event.valid?
    
    expect(event.errors[:description].any?).to eq(true)
  end
  
  it "requires a location" do
    event = Event.new(location: "")
    
    event.valid?

    expect(event.errors[:location].any?).to eq(true)
  end
  
  it "requires a description over 24 characters" do
    event = Event.new(description: "X" * 24)
    
    event.valid?

    expect(event.errors[:description].any?).to eq(true)
  end
  
  it "accepts a $0 price" do
    event = Event.new(price: 0.00)

    event.valid?

    expect(event.errors[:price].any?).to eq(false)
  end
  
  it "accepts a positive price" do
    event = Event.new(price: 10.00)

    event.valid?

    expect(event.errors[:price].any?).to eq(false)
  end
  
  it "rejects a negative price" do
    event = Event.new(price: -10.00)

    event.valid?

    expect(event.errors[:price].any?).to eq(true)
  end
  
  it "rejects a 0 capacity" do
    event = Event.new(capacity: 0)

    event.valid?

    expect(event.errors[:capacity].any?).to eq(true)
  end
  
  it "accepts a positive capacity" do
    event = Event.new(capacity: 5)

    event.valid?

    expect(event.errors[:capacity].any?).to eq(false)
  end
  
  it "rejects a negative capacity" do
    event = Event.new(capacity: -5)

    event.valid?

    expect(event.errors[:capacity].any?).to eq(true)
  end
  
  it "rejects a non-integer capacity" do
    event = Event.new(capacity: 3.14159)

    event.valid?

    expect(event.errors[:capacity].any?).to eq(true)
  end
  
  it "accepts properly formatted image file names" do
    file_names = %w[e.png event.png event.jpg event.gif EVENT.GIF]
    file_names.each do |file_name|
      event = Event.new(image_file_name: file_name)
      event.valid?
      expect(event.errors[:image_file_name].any?).to eq(false)
    end
  end
  
  it "reject improperly formatted image file names" do
    file_names = %w[event .jpg .png .gif event.pdf event.doc]
    file_names.each do |file_name|
      event = Event.new(image_file_name: file_name)
      event.valid?
      expect(event.errors[:image_file_name].any?).to eq(true)
    end
  end
  
  it "with example attributes is valid" do
    event = Event.new(event_attributes)
    
    expect(event.valid?).to eq(true)
  end
  
end
