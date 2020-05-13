class: CommandLineTool
id: comm.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- comm
