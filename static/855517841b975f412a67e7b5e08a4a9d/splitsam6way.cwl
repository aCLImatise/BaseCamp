class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splitsam6way.sh.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r_one_plus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r_one_minus
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r_one_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: r_two_plus
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: r_two_minus
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: r_two_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- splitsam6way.sh
