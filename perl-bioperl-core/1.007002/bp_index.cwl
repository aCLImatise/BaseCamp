class: CommandLineTool
id: bp_index.pl.cwl
inputs:
- id: fmt
  doc: <format>   - Fasta (default), swiss or EMBL
  type: boolean
  inputBinding:
    prefix: -fmt
- id: dir
  doc: <dir>      - directory where the index files are found (overrides BIOPERL_INDEX
    environment variable)
  type: boolean
  inputBinding:
    prefix: -dir
- id: dbm_file
  doc: (overrides BIOPERL_INDEX_TYPE environment variable)
  type: string
  inputBinding:
    prefix: '- DBM_file'
- id: v
  doc: '- report every index addition (debugging)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_index.pl
