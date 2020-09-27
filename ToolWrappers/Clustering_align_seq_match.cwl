class: CommandLineTool
id: Clustering_align_seq_match.cwl
inputs:
- id: in_id_mapping
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seed_seqs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_seqs
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
- align-seq-match
