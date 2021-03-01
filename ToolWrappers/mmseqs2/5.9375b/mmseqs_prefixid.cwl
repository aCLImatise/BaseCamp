class: CommandLineTool
id: mmseqs_prefixid.cwl
inputs:
- id: in_prefix
  doc: Use this prefix for all entries
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_mapping_file
  doc: specify a file that translates the keys of a DB to new keys, TSV format
  type: boolean?
  inputBinding:
    prefix: --mapping-file
- id: in_tsv
  doc: false           should output be in TSV format
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- prefixid
