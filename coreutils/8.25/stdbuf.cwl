class: CommandLineTool
id: ../../../stdbuf.cwl
inputs:
- id: input
  doc: adjust standard input stream buffering
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: adjust standard output stream buffering
  type: string
  inputBinding:
    prefix: --output
- id: error
  doc: adjust standard error stream buffering
  type: string
  inputBinding:
    prefix: --error
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- stdbuf
