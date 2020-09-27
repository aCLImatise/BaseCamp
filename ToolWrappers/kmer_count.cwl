class: CommandLineTool
id: kmer_count.cwl
inputs:
- id: in_km_er_cov
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_km_er
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kmer-count
