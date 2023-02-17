require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }

  it { is_expected.to have_fields(:title, :image, :raiting) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:image) }
  it { is_expected.to validate_presence_of(:raiting) }
  it { is_expected.to validate_uniqueness_of(:title) }

  it { is_expected.to have_and_belong_to_many(:actors) }
end
