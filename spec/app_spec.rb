require "app"

describe "check_opening_time" do
  it "should raise an argument error if passed something else than a Time class" do
    expect(check_opening_time(300)).to raise_error ArgumentError
  end

  it "should work with current time" do
    expect(check_opening_time(Time.now)).to eq("Open" || "Closed")
  end

  it "shold be open on weekdays at 10am" do

  end

  it "should be open on weekdays at 6pm" do

  end

  it "should be open on Saturdays at 1pm" do

  end

  it "should be closed on weekdays at half past noon" do

  end

  it "should be closed on Saturdays at 5pm" do

  end

  it "should be closed on Sundays" do

  end
end
