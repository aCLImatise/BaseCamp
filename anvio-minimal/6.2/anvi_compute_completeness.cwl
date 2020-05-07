class: CommandLineTool
id: anvi_compute_completeness.cwl
inputs:
- id: splits_of_interest
  doc: A file with split names. There should be only one column in the file, and each
    line should correspond to a unique split name.
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: min_e_value
  doc: Minimum significance score of an HMM find to be considered as a valid hit.
    Default is 1e-15.
  type: string
  inputBinding:
    prefix: --min-e-value
- id: list_completeness_sources
  doc: Show available sources and exit.
  type: boolean
  inputBinding:
    prefix: --list-completeness-sources
- id: completeness_source
  doc: Single-copy gene source to use to estimate completeness.
  type: string
  inputBinding:
    prefix: --completeness-source
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-compute-completeness
