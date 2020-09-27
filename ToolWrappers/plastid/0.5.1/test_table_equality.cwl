class: CommandLineTool
id: test_table_equality.cwl
inputs:
- id: in_give_verbose_output
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sort_keys
  doc: "If specified, values will be sorted by the column(s)\ncorresponding to these\
    \ name or numbers (0-indexed)\nbefore comparison"
  type: string[]
  inputBinding:
    prefix: --sort_keys
- id: in_exclude
  doc: Key or number (0-indexed) of columns to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_no_header
  doc: "If specified, no header row is present. Columns for\nall other command-line\
    \ flags must be referenced by\nnumber (starting at zero) rather than name, and\
    \ will\nbe assumed to be in the same order in both files."
  type: boolean
  inputBinding:
    prefix: --no_header
- id: in_to_l
  doc: "Tolerance by which floats are allowed to differ\n(Default: 1e-8)\n"
  type: double
  inputBinding:
    prefix: --tol
- id: in_file_one
  doc: file2
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- test_table_equality
