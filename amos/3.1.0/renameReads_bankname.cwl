class: CommandLineTool
id: renameReads_bankname.cwl
inputs:
- id: old_iid_new_iid
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- renameReads
- bankname
