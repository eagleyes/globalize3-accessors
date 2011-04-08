module Globalize3Accessors
	def self.included(base)
		base.extend InstanceMethods
	end
	module InstanceMethods
		def easy_translate options = {}
			options[:locales].each do |this_locale|
			
				globalize_options[:translated_attributes].each do |this_method|
			
					class_eval(%|
						def #{this_locale}_#{this_method}; 
							globalize.fetch("#{this_locale}","#{this_method}");
						end;
					|)
			
					class_eval("def #{this_locale}_#{this_method}=(this_value);" +
						%|
							globalize.stash("#{this_locale}","#{this_method}", this_value);
						end;
						|)
				end unless globalize_options[:translated_attributes].empty?
			
			end if options[:locales]

		end
	end 
end
