module Kafka
  module Protocol
    class SaslHandshakeResponse
      attr_reader :error_code
      attr_reader :enabled_mechanisms

      def initialize(error_code:, enabled_mechanisms:)
        @error_code = error_code
        @enabled_mechanisms = enabled_mechanisms
      end

      def self.decode(decoder)
        new(
          error_code: decoder.int16,
          enabled_mechanisms: decoder.array {decoder.string}
        )
      end
    end
  end
end
