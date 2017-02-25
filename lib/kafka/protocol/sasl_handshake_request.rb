module Kafka
  module Protocol
    class SaslHandshakeRequest
      def initialize(mechanism:)
        @mechanism = mechanism
      end

      def api_key
        17
      end

      def response_class
        SaslHandshakeResponse
      end

      def encode(encoder)
        encoder.write_string(@mechanism)
      end
    end
  end
end
