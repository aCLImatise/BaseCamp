class: CommandLineTool
id: novoutil_kmers.cwl
inputs:
- id: in_ref_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_k
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
- novoutil
- kmers
