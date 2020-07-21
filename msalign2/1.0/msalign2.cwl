class: CommandLineTool
id: ../../../msalign2.cwl
inputs:
- id: one
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-2'
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: ms_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lc_ms_dataset_one_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: lc_ms_dataset_two_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- msalign2
