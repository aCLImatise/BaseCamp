class: CommandLineTool
id: assess_homopolymers_count.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- count
