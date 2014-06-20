
module MohojoWerks
  module Support

    module Tagged
      def tags
        return @tags ||= Array.new
      end

      def tags=(value)
        @tags = value || Array.new
      end
    end
  end
end
