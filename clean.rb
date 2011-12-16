#!/usr/bin/ruby

# Load file into string
filename = ARGV[0]
infile = File.open(filename, "rb")
contents = infile.read

# Open new file for writing
outfile = File.open(filename, "w")

# Replace parts
contents.gsub!(/<\/span><br \/>/) {"</span>"}
contents.gsub!(/--><\/a>([A-Z])/) {"-->" + $1 + "</a>"}
contents.gsub!(/Figure\S+<a \nhref="([a-z0-9\#\-]+)">/) {"<a href=\"" + $1 + "\">Figure "}
contents.gsub!(/<br \/> <div class="caption"/) {"<img style=\"float:none; padding:0px;\" src=\"spanner.png\"><br><div class=\"caption\""}

# Output
outfile.puts contents