class: CommandLineTool
id: ../../../phyluce_assembly_get_fastas_from_match_counts.cwl
inputs:
- id: in_locus_db
  doc: ''
  type: string
  inputBinding:
    prefix: --locus-db
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --match-count-output
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_contigs
  doc: "The directory containing the assembled contigs in\nwhich you searched for\
    \ UCE loci. (default: None)"
  type: Directory
  inputBinding:
    prefix: --contigs
- id: in_incomplete_matrix
  doc: "The path to the outfile for incomplete-matrix records.\nRequired when processing\
    \ an incomplete data matrix.\n(default: False)"
  type: File
  inputBinding:
    prefix: --incomplete-matrix
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
- id: in_extend_locus_db
  doc: "An SQLlite database file holding probe matches to\nother targeted loci. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --extend-locus-db
- id: in_extend_locus_contigs
  doc: "A directory holding the assembled contigs (from\ngenomes or another study)\
    \ referenced by --extend-\nlocus-db. (default: None)\n"
  type: Directory
  inputBinding:
    prefix: --extend-locus-contigs
- id: in_var_9
  doc: '[--incomplete-matrix INCOMPLETE_MATRIX]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fastas_from_match_counts
