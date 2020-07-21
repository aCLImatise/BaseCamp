class: CommandLineTool
id: ../../../slclust.cwl
inputs:
- id: _verbosity_at
  doc: "[v] verbosity at 'info', 'debug'  "
  type: string
  inputBinding:
    prefix: -j
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_of_pairs
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: clusters
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- slclust
