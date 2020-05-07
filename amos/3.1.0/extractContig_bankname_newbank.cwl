class: CommandLineTool
id: extractContig_bankname_newbank.cwl
inputs:
- id: contig_iid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: new_bank
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- extractContig
- bankname
- newbank
