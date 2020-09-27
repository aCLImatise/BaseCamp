class: CommandLineTool
id: demo_regexp_grep.cwl
inputs:
- id: in_count
  doc: print only a count of matching lines per FILE
  type: boolean
  inputBinding:
    prefix: --count
- id: in_ignore_case
  doc: ignore case distinctions
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_files_with_matches
  doc: print only FILE names containing matches
  type: boolean
  inputBinding:
    prefix: --files-with-matches
- id: in_line_number
  doc: print line number with output lines
  type: boolean
  inputBinding:
    prefix: --line-number
- id: in_recursive
  doc: recursively scan sub-directories
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_no_messages
  doc: suppress error messages
  type: boolean
  inputBinding:
    prefix: --no-messages
- id: in_invert_match
  doc: select non-matching lines
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: in_line_regex
  doc: force PATTERN to match only whole lines
  type: boolean
  inputBinding:
    prefix: --line-regex
- id: in_line_regexp
  doc: force PATTERN to match only whole lines
  type: boolean
  inputBinding:
    prefix: --line-regexp
- id: in_filename__filefilenameread
  doc: "<filename>  or  --file=<filename>\nRead patterns from <filename> instead of\
    \ using a command line option.\nTrailing white space is removed; blanks lines\
    \ are ignored.\nThere is a maximum of 100 patterns."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_pc_regrep
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- demo_regexp_grep
