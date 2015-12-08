require 'rails_helper'


RSpec.describe ScadaDb::User, type: :model do
  context "[a well formed instance]" do
    subject { FactoryGirl.create(:scada_db_user) }

    it "is a valid istance" do
      expect( subject ).to be_valid
    end
  end
  #-- -------------------------------------------------------------------------
  #++
end
