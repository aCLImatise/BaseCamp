#!/usr/bin/env cwl-runner

baseCommand:
- join
class: CommandLineTool
cwlVersion: v1.0
id: join
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
- doc: treat the first line in each file as field headers, print them without trying
    to pair them
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
