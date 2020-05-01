#!/usr/bin/env cwl-runner

baseCommand:
- comm
class: CommandLineTool
cwlVersion: v1.0
id: comm
inputs:
- doc: check that the input is correctly sorted, even if all input lines are pairable
  id: check_order
  inputBinding:
    prefix: --check-order
  type: boolean
- doc: do not check that the input is correctly sorted
  id: no_check_order
  inputBinding:
    prefix: --nocheck-order
  type: boolean
- doc: separate columns with STR
  id: output_delimiter
  inputBinding:
    prefix: --output-delimiter
  type: string
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
