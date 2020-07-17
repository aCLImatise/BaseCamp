version 1.0

task Egrep {
  input {
    Boolean? extended_regexp
    Boolean? fixed_strings
    Boolean? basic_regexp
    Boolean? perl_regexp
    String? regexp
    File? file
    Boolean? ignore_case
    Boolean? no_ignore_case
    Boolean? word_regexp
    Boolean? line_regexp
    Boolean? null_data
    Boolean? no_messages
    Boolean? invert_match
    String? max_count
    Boolean? byte_offset
    Boolean? line_number
    Boolean? line_buffered
    Boolean? with_filename
    String? label
    Boolean? only_matching
    Boolean? silent
    String? binary_files
    Boolean? text
    Boolean? equivalent__binaryfileswithoutmatch
    String? directories
    String? devices
    Boolean? recursive
    Boolean? dereference_recursive
    String? include
    String? exclude
    File? exclude_from
    String? exclude_dir
    Boolean? files_without_match
    Boolean? files_with_matches
    Boolean? count
    Boolean? initial_tab
    Boolean? null
    String? before_context
    String? after_context
    String? context
    Boolean? num
    Boolean? color
    Boolean? colour
    Boolean? binary
    String grep
    String? option
  }
  command <<<
    egrep \
      ~{grep} \
      ~{option} \
      ~{true="--extended-regexp" false="" extended_regexp} \
      ~{true="--fixed-strings" false="" fixed_strings} \
      ~{true="--basic-regexp" false="" basic_regexp} \
      ~{true="--perl-regexp" false="" perl_regexp} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--no-ignore-case" false="" no_ignore_case} \
      ~{true="--word-regexp" false="" word_regexp} \
      ~{true="--line-regexp" false="" line_regexp} \
      ~{true="--null-data" false="" null_data} \
      ~{true="--no-messages" false="" no_messages} \
      ~{true="--invert-match" false="" invert_match} \
      ~{if defined(max_count) then ("--max-count " +  '"' + max_count + '"') else ""} \
      ~{true="--byte-offset" false="" byte_offset} \
      ~{true="--line-number" false="" line_number} \
      ~{true="--line-buffered" false="" line_buffered} \
      ~{true="--with-filename" false="" with_filename} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{true="--only-matching" false="" only_matching} \
      ~{true="--silent" false="" silent} \
      ~{if defined(binary_files) then ("--binary-files " +  '"' + binary_files + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{true="-I" false="" equivalent__binaryfileswithoutmatch} \
      ~{if defined(directories) then ("--directories " +  '"' + directories + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--dereference-recursive" false="" dereference_recursive} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude-from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(exclude_dir) then ("--exclude-dir " +  '"' + exclude_dir + '"') else ""} \
      ~{true="--files-without-match" false="" files_without_match} \
      ~{true="--files-with-matches" false="" files_with_matches} \
      ~{true="--count" false="" count} \
      ~{true="--initial-tab" false="" initial_tab} \
      ~{true="--null" false="" null} \
      ~{if defined(before_context) then ("--before-context " +  '"' + before_context + '"') else ""} \
      ~{if defined(after_context) then ("--after-context " +  '"' + after_context + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{true="-NUM" false="" num} \
      ~{true="--color" false="" color} \
      ~{true="--colour" false="" colour} \
      ~{true="--binary" false="" binary}
  >>>
  parameter_meta {
    extended_regexp: "PATTERNS are extended regular expressions"
    fixed_strings: "PATTERNS are strings"
    basic_regexp: "PATTERNS are basic regular expressions"
    perl_regexp: "PATTERNS are Perl regular expressions"
    regexp: "use PATTERNS for matching"
    file: "take PATTERNS from FILE"
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
    binary_files: "assume that binary files are TYPE; TYPE is 'binary', 'text', or 'without-match'"
    text: "equivalent to --binary-files=text"
    equivalent__binaryfileswithoutmatch: "equivalent to --binary-files=without-match"
    directories: "how to handle directories; ACTION is 'read', 'recurse', or 'skip'"
    devices: "how to handle devices, FIFOs and sockets; ACTION is 'read' or 'skip'"
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
    colour: "[=WHEN]       use markers to highlight the matching strings; WHEN is 'always', 'never', or 'auto'"
    binary: "do not strip CR characters at EOL (MSDOS/Windows)"
    grep: ""
    option: ""
  }
}