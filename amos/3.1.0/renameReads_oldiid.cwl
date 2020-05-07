class: CommandLineTool
id: renameReads_oldiid.newiid.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: old_iid_new_iid
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- renameReads
- oldiid.newiid
