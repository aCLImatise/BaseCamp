class: CommandLineTool
id: shuf.cwl
inputs:
- id: in_echo
  doc: treat each ARG as an input line
  type: boolean
  inputBinding:
    prefix: --echo
- id: in_input_range
  doc: treat each number LO through HI as an input line
  type: long
  inputBinding:
    prefix: --input-range
- id: in_head_count
  doc: output at most COUNT lines
  type: string
  inputBinding:
    prefix: --head-count
- id: in_output
  doc: write result to FILE instead of standard output
  type: File
  inputBinding:
    prefix: --output
- id: in_random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: in_repeat
  doc: output lines can be repeated
  type: boolean
  inputBinding:
    prefix: --repeat
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write result to FILE instead of standard output
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- shuf
