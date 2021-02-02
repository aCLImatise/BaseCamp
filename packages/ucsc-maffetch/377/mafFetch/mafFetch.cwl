class: CommandLineTool
id: mafFetch.cwl
inputs:
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_over_bed
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
- mafFetch
