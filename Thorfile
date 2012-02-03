require 'mechanize'

class Default < Thor
  include Thor::Actions

  desc 'new QUESTION_ID', 'Create method and test files for a new question'
  method_option :get_description, :aliases => '-d', :desc => 'Get question description from http://www.careercup.com/ and write it to method file as a comment'
  def new(question_id)
    @question_id = question_id
    @description = nil
    if options[:get_description]
      @description = Mechanize.
                      new.
                      get("http://www.careercup.com/question?id=#{@question_id}").
                      search('/html/body/div/div/div/ul/li/span[3]/p').
                      inner_html.
                      gsub('<br>', "\n")
    end
    template 'method.erb', "questions/#{@question_id}.rb"
    template 'test.erb', "test/#{@question_id}_test.rb"
  end

  def self.source_root
    File.expand_path('template')
  end
end
