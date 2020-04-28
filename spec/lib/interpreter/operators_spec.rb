# frozen_string_literal: true

require 'interpreter/operators'

RSpec.describe Interpreter::Operators do
  let(:object) { Class.new.include(described_class).new }

  describe '#plus?' do
    subject(:plus?) { object.plus?(character) }

    context 'when valid' do
      let(:character) { '+' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#minus?' do
    subject(:minus?) { object.minus?(character) }

    context 'when valid' do
      let(:character) { '-' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#multiply?' do
    subject(:multiply?) { object.multiply?(character) }

    context 'when valid' do
      let(:character) { '*' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#divide?' do
    subject(:divide?) { object.divide?(character) }

    context 'when valid' do
      let(:character) { '/' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#plus_or_minus?' do
    subject(:plus_or_minus?) { object.plus_or_minus?(character) }

    context 'when plus' do
      let(:character) { '+' }

      it { is_expected.to be true }
    end

    context 'when minus' do
      let(:character) { '-' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#multiply_or_divide?' do
    subject(:multiply_or_divide?) { object.multiply_or_divide?(character) }

    context 'when multiply' do
      let(:character) { '*' }

      it { is_expected.to be true }
    end

    context 'when divide' do
      let(:character) { '/' }

      it { is_expected.to be true }
    end

    context 'when invalid' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end

  describe '#operator?' do
    subject(:operator?) { object.operator?(character) }

    context 'with valid operator' do
      let(:character) { '+' }

      it { is_expected.to be true }
    end

    context 'with invalid operator' do
      let(:character) { ']' }

      it { is_expected.to be false }
    end
  end
end
