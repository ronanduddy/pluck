# frozen_string_literal: true

require 'node_visitor'
require 'support/helpers/token_helper'
require 'support/helpers/number_helper'
require 'support/helpers/binary_operator_helper'

RSpec.describe NodeVisitor do
  subject(:node_visitor) { described_class.new }

  let(:node) do
    binary_operator_node(
      left: number_node(integer_token(2)),
      operator: multiply_token,
      right: number_node(integer_token(3))
    )
  end

  describe '#visit' do
    subject(:visit) { node_visitor.visit(node) }

    context 'when method does not exist' do
      it { expect { visit }.to raise_error(NotImplementedError) }
    end
  end
end
