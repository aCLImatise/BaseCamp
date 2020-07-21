class: CommandLineTool
id: ../../../hca_mtx_to_10x.cwl
inputs:
- id: invalid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hca-mtx-to-10x
