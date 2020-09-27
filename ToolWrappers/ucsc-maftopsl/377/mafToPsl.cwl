class: CommandLineTool
id: mafToPsl.cwl
inputs:
- id: in_query_src
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_src
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafToPsl
