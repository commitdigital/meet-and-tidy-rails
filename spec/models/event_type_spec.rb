require "rails_helper"

RSpec.describe EventType, type: :model do
  describe "associations" do
    it { should have_many :events }
  end

  describe "validations" do
    subject { FactoryBot.build :event_type }
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  describe "#to_s" do
    it "returns its name" do
      expect(EventType.new(name: "Canal").to_s).to eq "Canal"
    end
  end
end
