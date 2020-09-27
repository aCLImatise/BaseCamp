class: CommandLineTool
id: bp_index.pl.cwl
inputs:
- id: in_fmt
  doc: <format>   - Fasta (default), swiss or EMBL
  type: boolean
  inputBinding:
    prefix: -fmt
- id: in_dir
  doc: "<dir>      - directory where the index files are found\n(overrides BIOPERL_INDEX\
    \ environment variable)"
  type: boolean
  inputBinding:
    prefix: -dir
- id: in_type
  doc: "- DBM_file type.\n(overrides BIOPERL_INDEX_TYPE environment variable)"
  type: string
  inputBinding:
    prefix: -type
- id: in_report_index_addition
  doc: '- report every index addition (debugging)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_index.pl
