module Formtastic
  module Inputs

    class StateInput
      include Formtastic::Inputs::Base
      def to_html
        raise "To use the :state input, please install the state_select plugin http://github.com/sprsquish/state_select" unless builder.respond_to?(:state_select)
        input_wrapping do
          label_html <<
          country = input_options.delete(:country) || 'US'
          builder.state_select(method, country, input_options, input_html_options)
        end
      end
    end

  end
end