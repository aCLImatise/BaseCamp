class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cleanAtac.cwl
inputs:
- id: discard_match_it
  doc: discard the match if it is below this percent identity
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- cleanAtac
