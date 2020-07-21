class: CommandLineTool
id: ../../../mafToPsl.cwl
inputs:
- id: query_src
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_src
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToPsl
