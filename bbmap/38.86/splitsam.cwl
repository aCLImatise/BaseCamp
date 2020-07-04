class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splitsam.sh.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: plus_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: minus_output
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: unmapped_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- splitsam.sh
