class: CommandLineTool
id: convertSamToCA.cwl
inputs:
- id: sam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: eid_to_iid_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: iid
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: length
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: mapping
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- convertSamToCA
