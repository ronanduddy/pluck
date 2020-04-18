# frozen_string_literal: true

require 'interpreter/expression'

RSpec.describe Interpreter::Expression do
  describe '#evaluate' do
    subject(:evaluate) { described_class.new(args).evaluate }
    let(:args) do
      {
        left: 9,
        operator: operator,
        right: 3
      }
    end

    context 'when addition' do
      let(:operator) { '+' }

      it { is_expected.to eq 12 }
    end

    context 'when subtraction' do
      let(:operator) { '-' }

      it { is_expected.to eq 6 }
    end

    context 'when multiplication' do
      let(:operator) { '*' }

      it { is_expected.to eq 27 }
    end

    context 'when division' do
      let(:operator) { '/' }

      it { is_expected.to eq 3 }
    end

    context 'when invalid' do
      let(:operator) { 'i' }

      it { expect { evaluate }.to raise_error(described_class::OperatorError) }
    end
  end
end
