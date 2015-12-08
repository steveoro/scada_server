require 'rails_helper'


RSpec.describe ScadaDb::LogMessage, type: :model do
  context "[a well formed instance]" do
    subject { FactoryGirl.create(:scada_db_log_message) }

    it "is a valid istance" do
      expect( subject ).to be_valid
    end
  end
  #-- -------------------------------------------------------------------------
  #++
end
