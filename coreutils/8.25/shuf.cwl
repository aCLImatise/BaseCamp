#!/usr/bin/env cwl-runner

baseCommand:
- shuf
class: CommandLineTool
cwlVersion: v1.0
id: shuf
inputs:
- doc: treat each ARG as an input line
  id: echo
  inputBinding:
    prefix: --echo
  type: boolean
- doc: treat each number LO through HI as an input line
  id: input_range
  inputBinding:
    prefix: --input-range
  type: string
- doc: output at most COUNT lines
  id: head_count
  inputBinding:
    prefix: --head-count
  type: string
- doc: write result to FILE instead of standard output
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: get random bytes from FILE
  id: random_source
  inputBinding:
    prefix: --random-source
  type: File
- doc: output lines can be repeated
  id: repeat
  inputBinding:
    prefix: --repeat
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
