class: CommandLineTool
id: egrep.cwl
inputs:
- id: in_extended_regexp
  doc: PATTERNS are extended regular expressions
  type: boolean?
  inputBinding:
    prefix: --extended-regexp
- id: in_fixed_strings
  doc: PATTERNS are strings
  type: boolean?
  inputBinding:
    prefix: --fixed-strings
- id: in_basic_regexp
  doc: PATTERNS are basic regular expressions
  type: boolean?
  inputBinding:
    prefix: --basic-regexp
- id: in_perl_regexp
  doc: PATTERNS are Perl regular expressions
  type: boolean?
  inputBinding:
    prefix: --perl-regexp
- id: in_regexp
  doc: use PATTERNS for matching
  type: string?
  inputBinding:
    prefix: --regexp
- id: in_file
  doc: take PATTERNS from FILE
  type: File?
  inputBinding:
    prefix: --file
- id: in_ignore_case
  doc: ignore case distinctions in patterns and data
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_no_ignore_case
  doc: do not ignore case distinctions (default)
  type: boolean?
  inputBinding:
    prefix: --no-ignore-case
- id: in_word_regexp
  doc: match only whole words
  type: boolean?
  inputBinding:
    prefix: --word-regexp
- id: in_line_regexp
  doc: match only whole lines
  type: boolean?
  inputBinding:
    prefix: --line-regexp
- id: in_null_data
  doc: a data line ends in 0 byte, not newline
  type: boolean?
  inputBinding:
    prefix: --null-data
- id: in_no_messages
  doc: suppress error messages
  type: boolean?
  inputBinding:
    prefix: --no-messages
- id: in_invert_match
  doc: select non-matching lines
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_max_count
  doc: stop after NUM selected lines
  type: long?
  inputBinding:
    prefix: --max-count
- id: in_byte_offset
  doc: print the byte offset with output lines
  type: boolean?
  inputBinding:
    prefix: --byte-offset
- id: in_line_number
  doc: print line number with output lines
  type: boolean?
  inputBinding:
    prefix: --line-number
- id: in_line_buffered
  doc: flush output on every line
  type: boolean?
  inputBinding:
    prefix: --line-buffered
- id: in_with_filename
  doc: print file name with output lines
  type: File?
  inputBinding:
    prefix: --with-filename
- id: in_label
  doc: use LABEL as the standard input file name prefix
  type: File?
  inputBinding:
    prefix: --label
- id: in_only_matching
  doc: show only nonempty parts of lines that match
  type: boolean?
  inputBinding:
    prefix: --only-matching
- id: in_silent
  doc: suppress all normal output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_binary_files
  doc: "assume that binary files are TYPE;\nTYPE is 'binary', 'text', or 'without-match'"
  type: string?
  inputBinding:
    prefix: --binary-files
- id: in_text
  doc: equivalent to --binary-files=text
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_equivalent_to_binaryfileswithoutmatch
  doc: equivalent to --binary-files=without-match
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_directories
  doc: "how to handle directories;\nACTION is 'read', 'recurse', or 'skip'"
  type: string?
  inputBinding:
    prefix: --directories
- id: in_devices
  doc: "how to handle devices, FIFOs and sockets;\nACTION is 'read' or 'skip'"
  type: string?
  inputBinding:
    prefix: --devices
- id: in_recursive
  doc: like --directories=recurse
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_dereference_recursive
  doc: likewise, but follow all symlinks
  type: boolean?
  inputBinding:
    prefix: --dereference-recursive
- id: in_include
  doc: search only files that match GLOB (a file pattern)
  type: File?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: skip files that match GLOB
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_exclude_from
  doc: skip files that match any file pattern from FILE
  type: File?
  inputBinding:
    prefix: --exclude-from
- id: in_exclude_dir
  doc: skip directories that match GLOB
  type: string?
  inputBinding:
    prefix: --exclude-dir
- id: in_files_without_match
  doc: print only names of FILEs with no selected lines
  type: boolean?
  inputBinding:
    prefix: --files-without-match
- id: in_files_with_matches
  doc: print only names of FILEs with selected lines
  type: boolean?
  inputBinding:
    prefix: --files-with-matches
- id: in_count
  doc: print only a count of selected lines per FILE
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_initial_tab
  doc: make tabs line up (if needed)
  type: boolean?
  inputBinding:
    prefix: --initial-tab
- id: in_null
  doc: print 0 byte after FILE name
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_before_context
  doc: print NUM lines of leading context
  type: long?
  inputBinding:
    prefix: --before-context
- id: in_after_context
  doc: print NUM lines of trailing context
  type: long?
  inputBinding:
    prefix: --after-context
- id: in_context
  doc: print NUM lines of output context
  type: long?
  inputBinding:
    prefix: --context
- id: in_num
  doc: same as --context=NUM
  type: boolean?
  inputBinding:
    prefix: -NUM
- id: in_color
  doc: '[=WHEN],'
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_colour
  doc: "[=WHEN]       use markers to highlight the matching strings;\nWHEN is 'always',\
    \ 'never', or 'auto'"
  type: boolean?
  inputBinding:
    prefix: --colour
- id: in_binary
  doc: do not strip CR characters at EOL (MSDOS/Windows)
  type: boolean?
  inputBinding:
    prefix: --binary
- id: in_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_with_filename
  doc: print file name with output lines
  type: File?
  outputBinding:
    glob: $(inputs.in_with_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- egrep
