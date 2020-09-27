class: CommandLineTool
id: hmmgs_find_cuts.cwl
inputs:
- id: in_cut_finder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_km_er_size
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_bloom_filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_query_files
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmgs
- find-cuts
