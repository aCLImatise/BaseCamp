class: CommandLineTool
id: iCount_man_args.cwl
inputs:
- id: in_mode
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_i_count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_man
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
- iCount
- man
- args
