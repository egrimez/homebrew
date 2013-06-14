require 'version'

module MacOS
  class Version < ::Version
    def <=>(other)
      v = case other.to_sym
          when :mavericks     then 10.9
          when :mountain_lion then 10.8
          when :lion          then 10.7
          when :snow_leopard  then 10.6
          when :leopard       then 10.5
          when :tiger         then 10.4
          else other.to_s
          end
      super(Version.new(v))
    end

    def to_sym
      case @version
      when "10.9" then :mavericks
      when "10.8" then :mountain_lion
      when "10.7" then :lion
      when "10.6" then :snow_leopard
      when "10.5" then :leopard
      when "10.4" then :tiger
      else @version.to_sym
      end
    end

    def pretty_name
      to_sym.to_s.split('_').map(&:capitalize).join(' ') 
    end
  end
end
