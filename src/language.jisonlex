%%

\s+                         /* skip whitespace */

(?:\"(?:\\\"|.)*?\")        return 'ESCAPED'

"vertical tab"              return 'VERTICAL_TAB'
"tab"                       return 'TAB'
"alphanumeric"              return 'ALPHANUMERIC'
"non alphanumeric"          return 'NON_WORD'
"non space"                 return 'NON_SPACE'
"space"                     return 'SPACE'
"null"                      return 'NULL'
"return"          					return 'RETURN'
(line\sfeed|new\s?line)     return 'LINE_FEED'
"form feed"                 return 'FORM_FEED'
"non digit"                 return 'NON_DIGIT'
"digit"                     return 'DIGIT'
"backspace"                 return 'BACKSPACE'
"any character"             return 'ANY_CHARACTER'
"starts with"               return 'STARTS_WITH'
"ends with"                 return 'ENDS_WITH'
"not followed by"           return 'NOT_FOLLOWED_BY'
"followed by"               return 'FOLLOWED_BY'
"hex"                       return 'HEX'
"ctrl+"                     return 'CONTROL_CHARACTER'

"group"                     return 'GROUP'
"end group"                 return 'END_GROUP'
"capture"                   return 'CAPTURE'
"end capture"               return 'END_CAPTURE'

"not in charset:"           return 'NOT_CHARACTER_SET'
"in charset:"               return 'CHARACTER_SET'

"optional more times"       return 'OPTIONAL_REPETITION'
"one or more times"         return 'ONE_OR_MORE_REPETITION'
"optional"                  return 'ZERO_OR_ONE_REPETITION'
"times"                     return 'REPETITION'
"(smallest)"                return 'SMALLEST'

"minimum"                   return 'MINIMUM'
"maximum"                   return 'MAXIMUM'

"from"                      return 'FROM'
"to"                        return 'TO'
"end"                       return 'END'
"start"                     return 'START'
"then"                      return 'THEN'
"or"                        return 'OR'
"and"                       return 'AND'
"for"                       return 'FOR'
(\,|comma)                  return ','
(\.|point)                  return '.'
(\;|semicolon)              return ';'

(\^|caret)                  return '^'
(\+|plus)                   return '+'
(\-|minus)                  return '-'
(_|underscore)              return '_'
(\*|asterisk|star)          return '*'
(\?|question\smark)         return '?'
(\(|left\sround\sbracket)   return '('
(\)|right\sround\sbracket)  return ')'
(\{|left\scurly\sbracket)   return '{'
(\}|right\scurly\sbracket)  return '}'
(\[|left\ssquare\sbracket)  return '['
(\]|right\ssquare\sbracket) return ']'
(\:|colon)                  return ':'
(\!|exclamation\smark)      return '!'
(\$|dollar)                 return '$'
(\||pipe)                   return '|'
(\"|quotation\smark)        return '"'
(\\|backslash)              return '\\'
(\/|slash)                  return '/'

"letter"                    return 'LETTER'
"uppercase"                 return 'UPPERCASE'
"lowercase"                 return 'LOWERCASE'
"word"                      return 'WORD'
"positive"                  return 'POSITIVE'
"negative"                  return 'NEGATIVE'
"number"                    return 'TYPE_NUMBER'
"decimal"                   return 'DECIMAL'
"date"                      return 'DATE'
"email"                     return 'EMAIL'
"url"                       return 'URL'
"ipv4"											return 'IPV4'
"ipv6"											return 'IPV6'
"ip address"                return 'IP_ADDRESS'
"mac address"								return 'MAC_ADDRESS'
"html tag"                  return 'HTML_TAG'
"slug"                      return 'SLUG'
"decimal"                   return 'DECIMAL'
"locale"                    return 'LOCALE'
"anything"                  return 'ANYTHING'
"latitude"									return 'LATITUDE'
"longitude"									return 'LONGITUDE'
"color name"								return 'COLOR_NAME'
"hostname"									return 'HOSTNAME'
"uuid"											return 'UUID'
"guid"											return 'GUID'
"us zip code"								return 'US_ZIP_CODE'
"canadian postal code"			return 'CANADIAN_POSTAL_CODE'
"uk postal code"						return 'UK_POSTAL_CODE'
"bic"												return 'BIC'
"iban"											return 'IBAN'

(hh|hours)                  return 'HOURS'
(mm|minutes)                return 'MINUTES'
(ss|seconds)                return 'SECONDS'
(dd|day)                    return 'DAY'
(MM|month)                  return 'MONTH'
"yy"                        return 'yy'
(yyyy|year)                 return 'YEAR'

[0-9]                       return 'NUMBER'

<<EOF>>                     return 'EOF'
.                           return 'CHARACTER'