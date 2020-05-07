class: CommandLineTool
id: demo_regexp_grep.cwl
inputs:
- id: count
  doc: print only a count of matching lines per FILE
  type: boolean
  inputBinding:
    prefix: --count
- id: ignore_case
  doc: ignore case distinctions
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: files_with_matches
  doc: print only FILE names containing matches
  type: boolean
  inputBinding:
    prefix: --files-with-matches
- id: line_number
  doc: print line number with output lines
  type: boolean
  inputBinding:
    prefix: --line-number
- id: recursive
  doc: recursively scan sub-directories
  type: boolean
  inputBinding:
    prefix: --recursive
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
- id: line_regex
  doc: force PATTERN to match only whole lines
  type: boolean
  inputBinding:
    prefix: --line-regex
- id: line_regexp
  doc: force PATTERN to match only whole lines
  type: boolean
  inputBinding:
    prefix: --line-regexp
- id: f
  doc: <filename>  or  --file=<filename> Read patterns from <filename> instead of
    using a command line option. Trailing white space is removed; blanks lines are
    ignored. There is a maximum of 100 patterns.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- demo_regexp_grep
