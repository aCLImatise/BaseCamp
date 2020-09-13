version 1.0

task DemoRegexpGrep {
  input {
    Boolean? count
    Boolean? ignore_case
    Boolean? files_with_matches
    Boolean? line_number
    Boolean? recursive
    Boolean? no_messages
    Boolean? invert_match
    Boolean? line_regex
    Boolean? line_regexp
    Boolean? filename__filefilenameread
    String pc_regrep
  }
  command <<<
    demo_regexp_grep \
      ~{pc_regrep} \
      ~{if (count) then "--count" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (files_with_matches) then "--files-with-matches" else ""} \
      ~{if (line_number) then "--line-number" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (no_messages) then "--no-messages" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (line_regex) then "--line-regex" else ""} \
      ~{if (line_regexp) then "--line-regexp" else ""} \
      ~{if (filename__filefilenameread) then "-f" else ""}
  >>>
  parameter_meta {
    count: "print only a count of matching lines per FILE"
    ignore_case: "ignore case distinctions"
    files_with_matches: "print only FILE names containing matches"
    line_number: "print line number with output lines"
    recursive: "recursively scan sub-directories"
    no_messages: "suppress error messages"
    invert_match: "select non-matching lines"
    line_regex: "force PATTERN to match only whole lines"
    line_regexp: "force PATTERN to match only whole lines"
    filename__filefilenameread: "<filename>  or  --file=<filename>\\nRead patterns from <filename> instead of using a command line option.\\nTrailing white space is removed; blanks lines are ignored.\\nThere is a maximum of 100 patterns."
    pc_regrep: ""
  }
  output {
    File out_stdout = stdout()
  }
}