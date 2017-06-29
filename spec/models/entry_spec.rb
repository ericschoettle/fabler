require 'rails_helper'

describe Entry do
  it { should belong_to :story }
  it { should belong_to :user }

end
