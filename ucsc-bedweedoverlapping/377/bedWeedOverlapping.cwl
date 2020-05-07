class: CommandLineTool
id: bedWeedOverlapping.cwl
inputs:
- id: weeds_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: max_overlap
  doc: =0.N - maximum overlapping ratio, default 0 (any overlap)
  type: boolean
  inputBinding:
    prefix: -maxOverlap
- id: invert
  doc: overlapping and get rid of everything else
  type: string
  inputBinding:
    prefix: -invert
outputs: []
cwlVersion: v1.1
baseCommand:
- bedWeedOverlapping
