require 'rails_helper'

describe Story do
  it { should have_many :entries }
  it { should have_many :users }

end
