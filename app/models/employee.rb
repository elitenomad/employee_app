class Employee < ActiveRecord::Base
	searchkick mappings: {
			           employee: {
					           properties: {
							           name: {type: "string", analyzer: "whitespace"},
					               first_name: {type: "string", analyzer: "keyword"},
					               last_name: {type: "string", analyzer: "keyword"},
					               about: {type: "string", analyzer: "whitespace"}
					           }
			           }
	           }
end
