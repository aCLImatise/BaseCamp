class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/test_table_equality.cwl
inputs:
- id: give_verbose_output
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: sort_keys
  doc: If specified, values will be sorted by the column(s) corresponding to these
    name or numbers (0-indexed) before comparison
  type: string[]
  inputBinding:
    prefix: --sort_keys
- id: exclude
  doc: Key or number (0-indexed) of columns to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: no_header
  doc: If specified, no header row is present. Columns for all other command-line
    flags must be referenced by number (starting at zero) rather than name, and will
    be assumed to be in the same order in both files.
  type: boolean
  inputBinding:
    prefix: --no_header
- id: to_l
  doc: 'Tolerance by which floats are allowed to differ (Default: 1e-8)'
  type: string
  inputBinding:
    prefix: --tol
outputs: []
cwlVersion: v1.1
baseCommand:
- test_table_equality
