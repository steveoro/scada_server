require 'rails_helper'


RSpec.describe ScadaDb::Device, type: :model do
  context "[a well formed instance]" do
    subject { FactoryGirl.create(:scada_db_device) }

    it "is a valid istance" do
      expect( subject ).to be_valid
    end
  end
  #-- -------------------------------------------------------------------------
  #++
end
