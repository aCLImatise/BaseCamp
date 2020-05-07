class: CommandLineTool
id: faSplit_outRoot.cwl
inputs:
- id: how
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_root
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- faSplit
- outRoot
