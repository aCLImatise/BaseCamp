class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_index.pl.cwl
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
- id: type
  doc: '- DBM_file type.  (overrides BIOPERL_INDEX_TYPE environment variable)'
  type: string
  inputBinding:
    prefix: -type
- id: report_index_addition
  doc: '- report every index addition (debugging)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_index.pl
