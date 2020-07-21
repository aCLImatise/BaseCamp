class: CommandLineTool
id: ../../../gemBS_index.cwl
inputs:
- id: loglevel
  doc: ''
  type: string
  inputBinding:
    prefix: --loglevel
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: j
  doc: ''
  type: string
  inputBinding:
    prefix: -j
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- index
