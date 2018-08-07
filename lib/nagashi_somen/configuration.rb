module NagashiSomen
  class Configuration

    def configure(&block)
      yield self
    end

    def initialize; end
  end

  class << self
    def configure
      yield config
    end

    def config
      @config ||= Configuration.new
    end

    alias :configuration :config
  end
end
