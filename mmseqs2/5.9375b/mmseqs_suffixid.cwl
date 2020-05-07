class: CommandLineTool
id: mmseqs_suffixid.cwl
inputs:
- id: prefix
  doc: 'Use this prefix for all entries                             '
  type: boolean
  inputBinding:
    prefix: --prefix
- id: mapping_file
  doc: specify a file that translates the keys of a DB to new keys, TSV format
  type: boolean
  inputBinding:
    prefix: --mapping-file
- id: tsv
  doc: 'false           should output be in TSV format                              '
  type: boolean
  inputBinding:
    prefix: --tsv
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- suffixid
