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
    Boolean? filename__filefilename
  }
  command <<<
    demo_regexp_grep \
      ~{true="--count" false="" count} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--files-with-matches" false="" files_with_matches} \
      ~{true="--line-number" false="" line_number} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--no-messages" false="" no_messages} \
      ~{true="--invert-match" false="" invert_match} \
      ~{true="--line-regex" false="" line_regex} \
      ~{true="--line-regexp" false="" line_regexp} \
      ~{true="-f" false="" filename__filefilename}
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
    filename__filefilename: "<filename>  or  --file=<filename> Read patterns from <filename> instead of using a command line option. Trailing white space is removed; blanks lines are ignored. There is a maximum of 100 patterns."
  }
}