require 'test_helper.rb'
require 'fixtures/sample_mail.rb'

class CompilanceTest < ActiveSupport::TestCase
  include ActiveModel::Lint::Tests
  
  def setup
    model = SampleMail.new
  end
  
  test "model_name exposes singular and human name" do
    assert_equal("sample_mail", model.class.model_name.singular)
    assert_equal("Sample mail", model.class.model_name.human)
  end
end