# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :raw_email

  def initialize(raw_email)
    @raw_email = raw_email
  end

  def parse
    remove_empty(split_email).uniq
  end

  def split_email
    @raw_email.split(/[\s,\s]/)
  end

  def remove_empty(string_array)
    string_array.select do |string|
      string != ''
    end
  end
end
