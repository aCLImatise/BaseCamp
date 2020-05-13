class: CommandLineTool
id: kmer_count.cwl
inputs:
- id: km_er_cov
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: km_er
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-count
