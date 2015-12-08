require 'rails_helper'


RSpec.describe ScadaDb::LogRequest, type: :model do
  context "[a well formed instance]" do
    subject { FactoryGirl.create(:scada_db_log_request) }

    it "is a valid istance" do
      expect( subject ).to be_valid
    end
  end
  #-- -------------------------------------------------------------------------
  #++
end
