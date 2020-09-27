class: CommandLineTool
id: slclust.cwl
inputs:
- id: in__verbosity_at
  doc: "[v] verbosity at 'info', 'debug'"
  type: string
  inputBinding:
    prefix: -j
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_of_pairs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_clusters
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- slclust
