class: CommandLineTool
id: ../../../comm.cwl
inputs:
- id: one
  doc: suppress column 1 (lines unique to FILE1)
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: suppress column 2 (lines unique to FILE2)
  type: boolean
  inputBinding:
    prefix: '-2'
- id: suppress_column_lines_appear
  doc: suppress column 3 (lines that appear in both files)
  type: boolean
  inputBinding:
    prefix: '-3'
- id: check_order
  doc: check that the input is correctly sorted, even if all input lines are pairable
  type: boolean
  inputBinding:
    prefix: --check-order
- id: no_check_order
  doc: do not check that the input is correctly sorted
  type: boolean
  inputBinding:
    prefix: --nocheck-order
- id: output_delimiter
  doc: separate columns with STR
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- comm
