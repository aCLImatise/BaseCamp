class: CommandLineTool
id: Clustering_to_unaligned_fasta.cwl
inputs:
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- to-unaligned-fasta
