class Landmark

  attr_accessor :imageUrl, :id, :name, :desc
  def Landmark.all
    # TO DO: return a list of landmark objects
    data = [["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/KJwWW_other_large.jpg",1,"Joe and Rika Mansueto Library","The Mansueto Library can hold the equivalent of 3.5 million volumes through its automated storage and retrieval system. Mansueto's design reflects Regenstein Library next door, as well as Mitchell Tower beyond. Though Mansueto's glass dome structure creates a sense of permeability between the indoors and the outdoors, it is closely temperature controlled, staying cool in the hot summers and warm in the cold winters."],
      ["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/IHOUSE_large.jpg",2,"International House","John D. Rockefeller Jr. established International House as a residence for international students. International House has recently completed a multi-year, $30 million restoration which has modernized resident and guest accommodations as well as updated meeting, conference and public event spaces will serve future generations of students, scholars and the community."],
    	["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/RATNER_large.jpg",3,"Gerald Ratner Athletics Center","John D. Rockefeller Jr. established International House as a residence for international students. The Gerald Ratner Athletics Center's exterior is often described as a ship-like structure."]]

    # add to return data
    data.map do |entry|
      landmark = Landmark.new
      landmark.imageUrl = entry[0]
      landmark.id = entry[1]
      landmark.name = entry[2]
      landmark.desc = entry[3]
      landmark
    end

  end

  # find by id
  def Landmark.find_by(id)
    # TO DO: return the landmark with a matching id
    # or return nil if no such landmark exists.
    Landmark.all.detect { |landmark| landmark.id == id }
  end


end
