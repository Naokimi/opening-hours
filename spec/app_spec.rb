require "app"

describe "check_opening_time" do
  it "should raise an argument error if passed something else than a Time class" do
    expect(check_opening_time(300)).to raise_error ArgumentError
  end

  it "should work with current time" do
    expect(check_opening_time(Time.now)).to eq("Open" || "Closed")
  end

  it "shold be open on weekdays at 10am" do
    date = Time.new(2020, 1, 1, 10)
    expect(check_opening_time(date)).to eq("Open")
  end

  it "should be open on weekdays at 6pm" do
    date = Time.new(2020, 1, 2, 18)
    expect(check_opening_time(date)).to eq("Open")
  end

  it "should be open on Saturdays at 1pm" do
    date = Time.new(2020, 1, 4, 13)
    expect(check_opening_time(date)).to eq("Open")
  end

  it "should be closed on weekdays at half past noon" do
    date = Time.new(2020, 1, 3, 12, 30)
    expect(check_opening_time(date)).to eq("Closed")
  end

  it "should be closed on Saturdays at 5pm" do
    date = Time.new(2020, 1, 4, 17)
    expect(check_opening_time(date)).to eq("Closed")
  end

  it "should be closed on Sundays" do
    date = Time.new(2020, 1, 5)
    expect(check_opening_time(date)).to eq("Closed")
  end
end
