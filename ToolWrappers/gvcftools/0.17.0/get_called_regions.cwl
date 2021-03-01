class: CommandLineTool
id: get_called_regions.cwl
inputs:
- id: in_gvc_f
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_called_dot_bed
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
- get_called_regions
