class: CommandLineTool
id: splitsam.sh.cwl
inputs:
- id: splits_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: plus_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: minus_output
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: unmapped_output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- splitsam.sh
