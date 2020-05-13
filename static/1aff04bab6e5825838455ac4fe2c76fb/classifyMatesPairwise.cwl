class: CommandLineTool
id: classifyMatesPairwise.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -O
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: trusted
  doc: ''
  type: string
  inputBinding:
    prefix: -trusted
- id: test
  doc: ''
  type: string
  inputBinding:
    prefix: -test
outputs: []
cwlVersion: v1.1
baseCommand:
- classifyMatesPairwise
