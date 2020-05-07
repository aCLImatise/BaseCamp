class: CommandLineTool
id: comparePolishes.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: gff3
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- comparePolishes
