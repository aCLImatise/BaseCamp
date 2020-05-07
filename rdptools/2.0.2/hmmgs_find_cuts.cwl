class: CommandLineTool
id: hmmgs_find_cuts.cwl
inputs:
- id: cut_finder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bloom_filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_files
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- find-cuts
