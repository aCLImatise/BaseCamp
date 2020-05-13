class: CommandLineTool
id: faSplit_how_count.cwl
inputs:
- id: input_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_root
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- faSplit
- how
- count
