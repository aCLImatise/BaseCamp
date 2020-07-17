class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gimme_match.cwl
inputs:
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- match
