class: CommandLineTool
id: extractContig_contigiid.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contig_iid
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: new_bank
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- extractContig
- contigiid
