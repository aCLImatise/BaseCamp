class: CommandLineTool
id: slice_mercator_alignment.cwl
inputs:
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chromosome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: half_open
  doc: end coordinate is open, i.e., [start, end)
  type: boolean
  inputBinding:
    prefix: --halfopen
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_mercator_alignment
