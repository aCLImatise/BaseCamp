class: CommandLineTool
id: join.cwl
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
- id: header
  doc: treat the first line in each file as field headers, print them without trying
    to pair them
  type: boolean
  inputBinding:
    prefix: --header
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- join
