class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedIntersect.cwl
inputs:
- id: b_score
  doc: output score from b.bed (must be at least 5 field bed)
  type: boolean
  inputBinding:
    prefix: -bScore
- id: tab
  doc: chop input at tabs not spaces
  type: boolean
  inputBinding:
    prefix: -tab
- id: allow_start_equal_end
  doc: Don't discard 0-length items of a or b (e.g. point insertions)
  type: boolean
  inputBinding:
    prefix: -allowStartEqualEnd
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: columns
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: four
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedIntersect
