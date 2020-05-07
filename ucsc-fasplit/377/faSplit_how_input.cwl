class: CommandLineTool
id: faSplit_how_input.fa_outRoot.cwl
inputs:
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_root
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faSplit
- how
- input.fa
- outRoot
