class: CommandLineTool
id: forge.cwl
inputs:
- id: in_ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dna
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- forge