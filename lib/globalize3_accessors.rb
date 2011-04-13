module ActiveRecord
  module Globalize3Accessors
    def self.included(base)
      base.extend Accessors
    end

    module Accessors

			def create_accessors
        #puts globalize.translated_attribute_names
				
				I18n.available_locales.each do |locale|
					this_locale = locale.to_s.gsub('-','_')
        		self.translated_attribute_names.each do |this_method|

          	define_method :"#{this_method}_#{this_locale}" do
          	  globalize.fetch "#{this_locale}", this_method
          	end

          	define_method("#{this_method}_#{this_locale}=") do |val|
          	  globalize.write("#{this_locale}","#{this_method}","#{val}")
          	end

        		end unless translated_attribute_names.empty?
				end
			end
    end
  end
end

ActiveRecord::Base.send :include, ActiveRecord::Globalize3Accessors
