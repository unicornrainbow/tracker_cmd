require 'httparty'

module TrackerCmd
  TOKEN = `git config --global pivotal.token` || `$PIVOTAL_TOKEN`
  INITIALS = `git config --global pivotal.initials` || `$PIVOTAL_INITIALS`

  class Tracker
    include HTTParty
    format :xml
    base_uri 'http://www.pivotaltracker.com/services/v3'
    headers({'X-TrackerToken' => TOKEN})

    def self.projects
      @projects = get('/projects')['projects']
    end

    def self.stories(project_id)
      get("/projects/#{project_id}/stories")['stories']
    end

    def self.mywork(project_id, initials)
      get("/projects/#{project_id}/stories", :query => {:filter => "mywork:#{initials}"})['stories']
    end
  end

end


