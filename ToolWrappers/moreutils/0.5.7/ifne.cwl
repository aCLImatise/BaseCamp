class: CommandLineTool
id: ifne.cwl
inputs:
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ifne
