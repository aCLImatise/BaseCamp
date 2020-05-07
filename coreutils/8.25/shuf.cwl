class: CommandLineTool
id: shuf.cwl
inputs:
- id: echo
  doc: treat each ARG as an input line
  type: boolean
  inputBinding:
    prefix: --echo
- id: input_range
  doc: treat each number LO through HI as an input line
  type: string
  inputBinding:
    prefix: --input-range
- id: head_count
  doc: output at most COUNT lines
  type: string
  inputBinding:
    prefix: --head-count
- id: output
  doc: write result to FILE instead of standard output
  type: File
  inputBinding:
    prefix: --output
- id: random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: repeat
  doc: output lines can be repeated
  type: boolean
  inputBinding:
    prefix: --repeat
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- shuf
