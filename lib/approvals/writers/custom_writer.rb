module Approvals
  module Writers
    class CustomWriter < TextWriter
      def format(*)
        raise NotImplementedError "Define a custom format method. See https://github.com/kytrinyx/approvals#customizing-formatted-output for details."
      end

      def filter(*)
        raise NotImplementedError "Define a custom filter method. See https://github.com/kytrinyx/approvals#customizing-formatted-output for details."
      end
    end
  end
end
