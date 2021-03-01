class: CommandLineTool
id: cortexpy_args.cwl
inputs:
- id: in_cortex_py
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cortexpy
- args
