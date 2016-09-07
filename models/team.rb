require_relative "../lib/team_data"

class Team
  def initialize
    @teams = TeamData.to_h
    @team_name = []
    team_name_filler
  end

  def team_name_filler
    @teams.each do |team_hash|
      @team_name << "#{team_hash[0] }\n"
    end
  end
end
