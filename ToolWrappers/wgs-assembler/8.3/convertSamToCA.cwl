class: CommandLineTool
id: convertSamToCA.cwl
inputs:
- id: in_sam_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_eid_to_iid_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_iid
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_length
  doc: ''
  type: long?
  inputBinding:
    position: 4
- id: in_mapping
  doc: ''
  type: string?
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertSamToCA
