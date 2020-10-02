class: CommandLineTool
id: comm.cwl
inputs:
- id: in_one
  doc: suppress column 1 (lines unique to FILE1)
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: suppress column 2 (lines unique to FILE2)
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_suppress_column_lines_appear
  doc: suppress column 3 (lines that appear in both files)
  type: boolean
  inputBinding:
    prefix: '-3'
- id: in_check_order
  doc: "check that the input is correctly sorted, even\nif all input lines are pairable"
  type: boolean
  inputBinding:
    prefix: --check-order
- id: in_no_check_order
  doc: do not check that the input is correctly sorted
  type: boolean
  inputBinding:
    prefix: --nocheck-order
- id: in_output_delimiter
  doc: separate columns with STR
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: in_total
  doc: output a summary
  type: boolean
  inputBinding:
    prefix: --total
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comm
