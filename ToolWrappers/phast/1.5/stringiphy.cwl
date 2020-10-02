class: CommandLineTool
id: stringiphy.cwl
inputs:
- id: in_exons_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stringiphy
