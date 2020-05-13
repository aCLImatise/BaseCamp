class: CommandLineTool
id: splitsam4way.sh.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_plus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_minus
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_chimeric
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- splitsam4way.sh
