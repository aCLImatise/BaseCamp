class: CommandLineTool
id: bp_fetch.pl.cwl
inputs:
- id: net
  doc: '- networked http: based database'
  type: string
  inputBinding:
    position: 0
- id: ace
  doc: '- ACeDB database'
  type: string
  inputBinding:
    position: 1
- id: fmt
  doc: <format> - Output format Fasta (default), EMBL, Raw, swiss or GCG
  type: boolean
  inputBinding:
    prefix: -fmt
- id: acc
  doc: '- string is an accession number, not an id.'
  type: boolean
  inputBinding:
    prefix: -acc
- id: dir
  doc: <dir>    - directory to find the index files (overrides BIOPERL_INDEX environment
    variable)
  type: boolean
  inputBinding:
    prefix: -dir
- id: type
  doc: '- type of DBM file to open (overrides BIOPERL_INDEX_TYPE environment variable)'
  type: string
  inputBinding:
    prefix: -type
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_fetch.pl
