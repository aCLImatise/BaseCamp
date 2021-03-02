class: CommandLineTool
id: momo_simple.cwl
inputs:
- id: in_psm_type
  doc: '|ms-gf+|tide|percolator'
  type: string?
  inputBinding:
    prefix: --psm-type
- id: in_sequence_column
  doc: '[column name]'
  type: boolean?
  inputBinding:
    prefix: --sequence-column
- id: in_width
  doc: '[positive odd integer] (default: 7)'
  type: boolean?
  inputBinding:
    prefix: --width
- id: in_protein_database
  doc: '(default: None)'
  type: File?
  inputBinding:
    prefix: --protein-database
- id: in_filter
  doc: '[field],lt|le|eq|ge|gt,[threshold] (default: no filter)'
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_remove_unknowns
  doc: '|F (default: F)'
  type: string?
  inputBinding:
    prefix: --remove-unknowns
- id: in_eliminate_repeats
  doc: '[positive odd integer or 0 for no elimination] (default: width)'
  type: boolean?
  inputBinding:
    prefix: --eliminate-repeats
- id: in_min_occurrences
  doc: '[non-negative] (default: 5)'
  type: boolean?
  inputBinding:
    prefix: --min-occurrences
- id: in_single_motif_per_mass
  doc: '[positive integer or 0 for linear search] (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --single-motif-per-mass
- id: in_verbosity
  doc: '|2|3|4|5 (default: 2)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_ptm_file
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
- momo
- simple
