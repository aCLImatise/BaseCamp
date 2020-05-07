class: CommandLineTool
id: splitsam6way.sh.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r1plus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r1minus
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r1_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: r2plus
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: r2minus
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: r2_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- splitsam6way.sh
