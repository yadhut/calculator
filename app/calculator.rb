class Calculator
  class << self
    def add(input)
      return 0 if input.empty?

      # values = input.split(',').map(&:to_i)
      # values = input.split(/,|\n/).map(&:to_i)
      delimiter = /,|\n/
      if input.start_with?('//')
        deli, input = input.split("\n")
        delimiter = Regexp.escape(deli[2])
      end

      values = input.split(delimiter).map(&:to_i)
      values.sum
    end
  end
end



  