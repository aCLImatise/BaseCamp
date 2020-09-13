class: CommandLineTool
id: ../../../Clustering_filter_seqs.cwl
inputs:
- id: in_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_remove
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
- Clustering
- filter-seqs
