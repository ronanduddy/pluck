# frozen_string_literal: true

require 'pluck/cli'

RSpec.describe Pluck::CLI do
  describe '.new' do
    subject(:new) { described_class.new(['test.plk']) }

    it { is_expected.to be_a described_class::Core }
  end
end