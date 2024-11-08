class TrainlineBot
  # Make this a class method to call directly
  def self.find(from, to, departure_at)
    # Static data for demonstration
    segments = [
      Segment.new(
        departure_station: "Ashchurch For Tewkesbury",
        departure_at: DateTime.new(2023, 4, 26, 6, 9, 0),
        arrival_station: "Ash",
        arrival_at: DateTime.new(2023, 4, 26, 9, 37, 0),
        duration_in_minutes: 208,
        changeovers: 2,
        products: ["train"],
        service_agencies: ["thetrainline"]
      )
    ]

    # Associate fares with segments
    segments.each do |segment|
      segment.fares.build(
        name: "Advance Single",
        price_in_cents: 1939,
        currency: "GBP",
        comfort_class: 1
      )
    end

    segments
  end
end
