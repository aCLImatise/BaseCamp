class: CommandLineTool
id: mmseqs_convertkb.cwl
inputs:
- id: in_mapping_file
  doc: specify a file that translates the keys of a DB to new keys, TSV format
  type: boolean?
  inputBinding:
    prefix: --mapping-file
- id: in_kb_columns
  doc: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16        list of indices of UniprotKB
    columns to be extracted
  type: boolean?
  inputBinding:
    prefix: --kb-columns
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_uniprotkb_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_uniprotkb_db
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertkb
