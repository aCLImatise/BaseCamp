class: CommandLineTool
id: ../../../taxonomy_filter_refseq.cwl
inputs:
- id: no_curated
  doc: Don't accept curated RNAs and proteins (NM_, NR_ and NP_ accessions)
  type: boolean
  inputBinding:
    prefix: --no_curated
- id: no_predicted
  doc: Don't accept computationally predicted RNAs and proteins (XM_, XR_ and XP_
    accessions)
  type: boolean
  inputBinding:
    prefix: --no_predicted
- id: db
  doc: URL for SQLite taxonomy database
  type: string
  inputBinding:
    prefix: --db
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ancestor_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_filter_refseq
