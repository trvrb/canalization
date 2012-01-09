#!/usr/bin/ruby

# Load file into string
filestem = ARGV[0]
infile = File.open(filestem + ".html", "rb")
contents = infile.read

# Open new file for writing
outfile = File.open(filestem + ".html", "w")

# Replace parts
contents.gsub!(/<\/span><br \/>/) {"</span>"}
contents.gsub!(/--><\/a>([A-Z])/) {"-->" + $1 + "</a>"}
contents.gsub!(/Figure\S+<a \nhref="([a-z0-9\#\-]+)">/) {"<a href=\"" + $1 + "\">Figure "}
contents.gsub!(/Table\S+<a \nhref="([a-z0-9\#\-]+)">/) {"<a href=\"" + $1 + "\">Table "}
contents.gsub!(/Fig.\S+<a \nhref="([a-z0-9\#\-]+)">/) {"<a href=\"" + $1 + "\">Fig. "}
contents.gsub!(/<br \/> <div class="caption"/) {"<img style=\"float:none; padding:0px;\" src=\"spanner.png\"><br><div class=\"caption\""}

# Extract date
date = ""
contents.gsub!(/<div class="date" ><span \nclass="cmr-12">([a-zA-Z0-9\,\ ]+)<\/span><\/div>/) { date = $1; ""}
date = "<div class=\"date\">Last updated " + date + "</div>"

# Output
outfile.puts contents
outfile.puts date

# Cleanup directory
File.delete(filestem + ".4ct") if File::exists?(filestem + ".4ct")
File.delete(filestem + ".4tc") if File::exists?(filestem + ".4tc")
File.delete(filestem + ".dvi") if File::exists?(filestem + ".dvi")
File.delete(filestem + ".idv") if File::exists?(filestem + ".idv")
File.delete(filestem + ".lg") if File::exists?(filestem + ".lg")
File.delete(filestem + ".log") if File::exists?(filestem + ".log")
File.delete(filestem + ".tmp") if File::exists?(filestem + ".tmp")
File.delete(filestem + ".xref") if File::exists?(filestem + ".xref")