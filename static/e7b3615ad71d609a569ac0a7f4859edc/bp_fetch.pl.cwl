class: CommandLineTool
id: bp_fetch.pl.cwl
inputs:
- id: in_fmt
  doc: "<format> - Output format\nFasta (default), EMBL, Raw, swiss or GCG"
  type: boolean?
  inputBinding:
    prefix: -fmt
- id: in_acc
  doc: '- string is an accession number, not an'
  type: boolean?
  inputBinding:
    prefix: -acc
- id: in_dir
  doc: "<dir>    - directory to find the index files\n(overrides BIOPERL_INDEX environment\
    \ variable)"
  type: boolean?
  inputBinding:
    prefix: -dir
- id: in_type
  doc: "- type of DBM file to open\n(overrides BIOPERL_INDEX_TYPE environment variable)"
  type: File?
  inputBinding:
    prefix: -type
- id: in_net
  doc: '- networked http: based database'
  type: string
  inputBinding:
    position: 0
- id: in_ace
  doc: '- ACeDB database'
  type: string
  inputBinding:
    position: 1
- id: in_information
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_id_dot
  doc: options only for expert use
  type: string
  inputBinding:
    position: 1
- id: in_sdbm_file
  doc: USING IT YOURSELF
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: Code
  type: string
  inputBinding:
    position: 0
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_fetch.pl
