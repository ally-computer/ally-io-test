require 'ally/io'
require 'ally/io/test/version'

module Ally
  module Io
    class Test
      include Ally::Io

      def say(text)
        super # do not delete
        text
      end
    end
  end
end
