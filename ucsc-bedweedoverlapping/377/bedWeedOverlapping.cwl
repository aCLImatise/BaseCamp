class: CommandLineTool
id: ../../../bedWeedOverlapping.cwl
inputs:
- id: max_overlap
  doc: '- maximum overlapping ratio, default 0 (any overlap)'
  type: string
  inputBinding:
    prefix: -maxOverlap
- id: invert
  doc: '- keep the overlapping and get rid of everything else'
  type: boolean
  inputBinding:
    prefix: -invert
- id: weeds_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedWeedOverlapping
