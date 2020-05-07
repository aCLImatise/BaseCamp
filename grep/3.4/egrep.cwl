class: CommandLineTool
id: egrep.cwl
inputs:
- id: extended_regexp
  doc: PATTERNS are extended regular expressions
  type: boolean
  inputBinding:
    prefix: --extended-regexp
- id: fixed_strings
  doc: PATTERNS are strings
  type: boolean
  inputBinding:
    prefix: --fixed-strings
- id: basic_regexp
  doc: PATTERNS are basic regular expressions
  type: boolean
  inputBinding:
    prefix: --basic-regexp
- id: perl_regexp
  doc: PATTERNS are Perl regular expressions
  type: boolean
  inputBinding:
    prefix: --perl-regexp
- id: regexp
  doc: use PATTERNS for matching
  type: string
  inputBinding:
    prefix: --regexp
- id: file
  doc: take PATTERNS from FILE
  type: File
  inputBinding:
    prefix: --file
- id: ignore_case
  doc: ignore case distinctions in patterns and data
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: no_ignore_case
  doc: do not ignore case distinctions (default)
  type: boolean
  inputBinding:
    prefix: --no-ignore-case
- id: word_regexp
  doc: match only whole words
  type: boolean
  inputBinding:
    prefix: --word-regexp
- id: line_regexp
  doc: match only whole lines
  type: boolean
  inputBinding:
    prefix: --line-regexp
- id: null_data
  doc: a data line ends in 0 byte, not newline
  type: boolean
  inputBinding:
    prefix: --null-data
- id: no_messages
  doc: suppress error messages
  type: boolean
  inputBinding:
    prefix: --no-messages
- id: invert_match
  doc: select non-matching lines
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: max_count
  doc: stop after NUM selected lines
  type: string
  inputBinding:
    prefix: --max-count
- id: byte_offset
  doc: print the byte offset with output lines
  type: boolean
  inputBinding:
    prefix: --byte-offset
- id: line_number
  doc: print line number with output lines
  type: boolean
  inputBinding:
    prefix: --line-number
- id: line_buffered
  doc: flush output on every line
  type: boolean
  inputBinding:
    prefix: --line-buffered
- id: with_filename
  doc: print file name with output lines
  type: boolean
  inputBinding:
    prefix: --with-filename
- id: label
  doc: use LABEL as the standard input file name prefix
  type: string
  inputBinding:
    prefix: --label
- id: only_matching
  doc: show only nonempty parts of lines that match
  type: boolean
  inputBinding:
    prefix: --only-matching
- id: silent
  doc: suppress all normal output
  type: boolean
  inputBinding:
    prefix: --silent
- id: binary_files
  doc: assume that binary files are TYPE; TYPE is 'binary', 'text', or 'without-match'
  type: string
  inputBinding:
    prefix: --binary-files
- id: text
  doc: equivalent to --binary-files=text
  type: boolean
  inputBinding:
    prefix: --text
- id: i
  doc: equivalent to --binary-files=without-match
  type: boolean
  inputBinding:
    prefix: -I
- id: directories
  doc: how to handle directories; ACTION is 'read', 'recurse', or 'skip'
  type: string
  inputBinding:
    prefix: --directories
- id: devices
  doc: how to handle devices, FIFOs and sockets; ACTION is 'read' or 'skip'
  type: string
  inputBinding:
    prefix: --devices
- id: recursive
  doc: like --directories=recurse
  type: boolean
  inputBinding:
    prefix: --recursive
- id: dereference_recursive
  doc: likewise, but follow all symlinks
  type: boolean
  inputBinding:
    prefix: --dereference-recursive
- id: include
  doc: search only files that match GLOB (a file pattern)
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: skip files that match GLOB
  type: string
  inputBinding:
    prefix: --exclude
- id: exclude_from
  doc: skip files that match any file pattern from FILE
  type: File
  inputBinding:
    prefix: --exclude-from
- id: exclude_dir
  doc: skip directories that match GLOB
  type: string
  inputBinding:
    prefix: --exclude-dir
- id: files_without_match
  doc: print only names of FILEs with no selected lines
  type: boolean
  inputBinding:
    prefix: --files-without-match
- id: files_with_matches
  doc: print only names of FILEs with selected lines
  type: boolean
  inputBinding:
    prefix: --files-with-matches
- id: count
  doc: print only a count of selected lines per FILE
  type: boolean
  inputBinding:
    prefix: --count
- id: initial_tab
  doc: make tabs line up (if needed)
  type: boolean
  inputBinding:
    prefix: --initial-tab
- id: 'null'
  doc: print 0 byte after FILE name
  type: boolean
  inputBinding:
    prefix: --null
- id: before_context
  doc: print NUM lines of leading context
  type: string
  inputBinding:
    prefix: --before-context
- id: after_context
  doc: print NUM lines of trailing context
  type: string
  inputBinding:
    prefix: --after-context
- id: context
  doc: print NUM lines of output context
  type: string
  inputBinding:
    prefix: --context
- id: num
  doc: same as --context=NUM
  type: boolean
  inputBinding:
    prefix: -NUM
- id: color
  doc: '[=WHEN],'
  type: boolean
  inputBinding:
    prefix: --color
- id: colour
  doc: "[=WHEN]       use markers to highlight the matching strings; WHEN is 'always',\
    \ 'never', or 'auto'"
  type: boolean
  inputBinding:
    prefix: --colour
- id: binary
  doc: do not strip CR characters at EOL (MSDOS/Windows)
  type: boolean
  inputBinding:
    prefix: --binary
outputs: []
cwlVersion: v1.1
baseCommand:
- egrep
