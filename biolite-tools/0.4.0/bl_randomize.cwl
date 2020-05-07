class: CommandLineTool
id: bl_randomize.cwl
inputs:
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify multiple OUTPUT files
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: use the order in READ-ORDER instead of a random order
  type: boolean
  inputBinding:
    prefix: -r
- id: w
  doc: write the random order to WRITE-ORDER
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-randomize
