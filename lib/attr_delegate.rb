require "attr_delegate/version"
require "active_support/concern"
require "active_support/core_ext/module/delegation"

class Module
  def attr_delegate(*attrs)
    options = attrs.extract_options!
    attrs.each do |attr|
      delegate attr, "#{attr}=", options
    end
  end

end
