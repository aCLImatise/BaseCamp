class: CommandLineTool
id: ../../../ffindex_apply.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: k
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: ff_index_apply_mpi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: data_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_apply
