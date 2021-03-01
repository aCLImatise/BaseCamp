class: CommandLineTool
id: stdbuf.cwl
inputs:
- id: in_input
  doc: adjust standard input stream buffering
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: adjust standard output stream buffering
  type: string?
  inputBinding:
    prefix: --output
- id: in_error
  doc: adjust standard error stream buffering
  type: string?
  inputBinding:
    prefix: --error
- id: in_option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stdbuf
