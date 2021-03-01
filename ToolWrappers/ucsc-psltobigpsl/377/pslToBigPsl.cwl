class: CommandLineTool
id: pslToBigPsl.cwl
inputs:
- id: in_file_dot_psl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_stdout
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
- pslToBigPsl
