class: CommandLineTool
id: Clustering_to_fasta.cwl
inputs:
- id: in_to_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_mask_seq_id
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- to-fasta
