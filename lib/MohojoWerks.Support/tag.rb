
require_relative 'named'

module MohojoWerks
  module Support

    class Tag
      include Named

      def initialize(name)
        @name = name
      end
    end
  end
end
