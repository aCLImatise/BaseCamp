class: CommandLineTool
id: filter_ref_list.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: discard
  doc: ''
  type: string
  inputBinding:
    prefix: --discard
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_ref_list
