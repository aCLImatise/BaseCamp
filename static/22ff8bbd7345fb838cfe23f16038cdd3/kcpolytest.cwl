class: CommandLineTool
id: kcpolytest.cwl
inputs:
- id: in_rnd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rnd
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_ru
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -ru
- id: in_hard
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hard
- id: in_it
  doc: ''
  type: long?
  inputBinding:
    prefix: -it
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map_red
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_misc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_queue
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tran
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wicked
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
- kcpolytest
