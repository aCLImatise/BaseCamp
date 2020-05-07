class: CommandLineTool
id: fastSimBac.cwl
inputs:
- id: sample_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: region_in_base_pairs
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastSimBac
