class: CommandLineTool
id: grf_nest.cwl
inputs:
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- grf-nest
