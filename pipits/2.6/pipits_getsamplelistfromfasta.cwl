class: CommandLineTool
id: pipits_getsamplelistfromfasta.cwl
inputs:
- id: i
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_getsamplelistfromfasta
