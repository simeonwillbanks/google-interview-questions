class Default < Thor
  include Thor::Actions

  desc 'new QUESTION_ID', 'Create method and test files for a new question'
  def new(question_id)
    @question_id = question_id
    template 'method.erb', "questions/#{@question_id}.rb"
    template 'test.erb', "test/#{@question_id}_test.rb"
  end

  def self.source_root
    File.expand_path('template')
  end
end
