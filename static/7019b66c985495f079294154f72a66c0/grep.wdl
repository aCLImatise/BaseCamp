version 1.0

task Grep {
  input {
    Boolean? extended_regexp
    Boolean? fixed_strings
    Boolean? basic_regexp
    Boolean? perl_regexp
    String? regexp
    File? take_patterns_file
    Boolean? ignore_case
    Boolean? no_ignore_case
    Boolean? word_regexp
    Boolean? line_regexp
    Boolean? null_data
    Boolean? no_messages
    Boolean? invert_match
    Int? max_count
    Boolean? byte_offset
    Boolean? line_number
    Boolean? line_buffered
    File? with_filename
    File? label
    Boolean? only_matching
    Boolean? silent
    String? binary_files
    Boolean? text
    Boolean? equivalent_to_binaryfileswithoutmatch
    String? directories
    String? devices
    Boolean? recursive
    Boolean? dereference_recursive
    File? include
    String? exclude
    File? exclude_from
    String? exclude_dir
    Boolean? files_without_match
    Boolean? files_with_matches
    Boolean? count
    Boolean? initial_tab
    Boolean? null
    Int? before_context
    Int? after_context
    Int? context
    Boolean? num
    Boolean? color
    Boolean? colour
    Boolean? binary
  }
  command <<<
    grep \
      ~{if (extended_regexp) then "--extended-regexp" else ""} \
      ~{if (fixed_strings) then "--fixed-strings" else ""} \
      ~{if (basic_regexp) then "--basic-regexp" else ""} \
      ~{if (perl_regexp) then "--perl-regexp" else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(take_patterns_file) then ("--file " +  '"' + take_patterns_file + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (no_ignore_case) then "--no-ignore-case" else ""} \
      ~{if (word_regexp) then "--word-regexp" else ""} \
      ~{if (line_regexp) then "--line-regexp" else ""} \
      ~{if (null_data) then "--null-data" else ""} \
      ~{if (no_messages) then "--no-messages" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if defined(max_count) then ("--max-count " +  '"' + max_count + '"') else ""} \
      ~{if (byte_offset) then "--byte-offset" else ""} \
      ~{if (line_number) then "--line-number" else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if (with_filename) then "--with-filename" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if (only_matching) then "--only-matching" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(binary_files) then ("--binary-files " +  '"' + binary_files + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (equivalent_to_binaryfileswithoutmatch) then "-I" else ""} \
      ~{if defined(directories) then ("--directories " +  '"' + directories + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (dereference_recursive) then "--dereference-recursive" else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude-from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(exclude_dir) then ("--exclude-dir " +  '"' + exclude_dir + '"') else ""} \
      ~{if (files_without_match) then "--files-without-match" else ""} \
      ~{if (files_with_matches) then "--files-with-matches" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (initial_tab) then "--initial-tab" else ""} \
      ~{if (null) then "--null" else ""} \
      ~{if defined(before_context) then ("--before-context " +  '"' + before_context + '"') else ""} \
      ~{if defined(after_context) then ("--after-context " +  '"' + after_context + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if (num) then "-NUM" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (colour) then "--colour" else ""} \
      ~{if (binary) then "--binary" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extended_regexp: "PATTERNS are extended regular expressions"
    fixed_strings: "PATTERNS are strings"
    basic_regexp: "PATTERNS are basic regular expressions"
    perl_regexp: "PATTERNS are Perl regular expressions"
    regexp: "use PATTERNS for matching"
    take_patterns_file: "take PATTERNS from FILE"
    ignore_case: "ignore case distinctions in patterns and data"
    no_ignore_case: "do not ignore case distinctions (default)"
    word_regexp: "match only whole words"
    line_regexp: "match only whole lines"
    null_data: "a data line ends in 0 byte, not newline"
    no_messages: "suppress error messages"
    invert_match: "select non-matching lines"
    max_count: "stop after NUM selected lines"
    byte_offset: "print the byte offset with output lines"
    line_number: "print line number with output lines"
    line_buffered: "flush output on every line"
    with_filename: "print file name with output lines"
    label: "use LABEL as the standard input file name prefix"
    only_matching: "show only nonempty parts of lines that match"
    silent: "suppress all normal output"
    binary_files: "assume that binary files are TYPE;\\nTYPE is 'binary', 'text', or 'without-match'"
    text: "equivalent to --binary-files=text"
    equivalent_to_binaryfileswithoutmatch: "equivalent to --binary-files=without-match"
    directories: "how to handle directories;\\nACTION is 'read', 'recurse', or 'skip'"
    devices: "how to handle devices, FIFOs and sockets;\\nACTION is 'read' or 'skip'"
    recursive: "like --directories=recurse"
    dereference_recursive: "likewise, but follow all symlinks"
    include: "search only files that match GLOB (a file pattern)"
    exclude: "skip files that match GLOB"
    exclude_from: "skip files that match any file pattern from FILE"
    exclude_dir: "skip directories that match GLOB"
    files_without_match: "print only names of FILEs with no selected lines"
    files_with_matches: "print only names of FILEs with selected lines"
    count: "print only a count of selected lines per FILE"
    initial_tab: "make tabs line up (if needed)"
    null: "print 0 byte after FILE name"
    before_context: "print NUM lines of leading context"
    after_context: "print NUM lines of trailing context"
    context: "print NUM lines of output context"
    num: "same as --context=NUM"
    color: "[=WHEN],"
    colour: "[=WHEN]       use markers to highlight the matching strings;\\nWHEN is 'always', 'never', or 'auto'"
    binary: "do not strip CR characters at EOL (MSDOS/Windows)"
  }
  output {
    File out_stdout = stdout()
    File out_with_filename = "${in_with_filename}"
  }
}