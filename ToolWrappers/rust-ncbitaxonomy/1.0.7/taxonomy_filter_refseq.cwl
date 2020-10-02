class: CommandLineTool
id: taxonomy_filter_refseq.cwl
inputs:
- id: in_no_curated
  doc: Don't accept curated RNAs and proteins (NM_, NR_ and NP_ accessions)
  type: boolean
  inputBinding:
    prefix: --no_curated
- id: in_no_predicted
  doc: Don't accept computationally predicted RNAs and proteins (XM_, XR_ and XP_
    accessions)
  type: boolean
  inputBinding:
    prefix: --no_predicted
- id: in_db
  doc: URL for SQLite taxonomy database
  type: string
  inputBinding:
    prefix: --db
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ancestor_name
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
- taxonomy_filter_refseq
