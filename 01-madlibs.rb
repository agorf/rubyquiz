require 'erb'

def ask(q)
  print "#{q}: "
  $stdin.gets.strip
end

story = $stdin.read

exit if story.nil?

vars = []

s = story.gsub(/\(\(([^:]+:)?([^\)]+)\)\)/) {
  if $1.nil?
    if vars.include?($2)
      "<%= @#{$2} %>"
    else
      "<%= ask('#{$2}') %>"
    end
  else
    "<%= @#{vars << $1.chomp(':')} = ask('#{$2}') %>"
  end
}

puts ERB.new(s).result(binding).strip
