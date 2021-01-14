# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    def initialize(emails)
        @emails = emails
    end

    def parse
        parsed = @emails.split(" ")
        x = 0
        parsed.length.times do
            if parsed[x].end_with?(',')
                parsed[x][-1] = ""
            end
            x += 1
        end
        return parsed.uniq
    end

end