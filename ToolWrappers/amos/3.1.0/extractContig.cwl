class: CommandLineTool
id: extractContig.cwl
inputs:
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contig_iid
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_new_bank
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractContig
