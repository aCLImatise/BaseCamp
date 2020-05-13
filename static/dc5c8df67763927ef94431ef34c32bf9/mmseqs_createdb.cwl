class: CommandLineTool
id: mmseqs_createdb.cwl
inputs:
- id: dont_split_seq_by_len
  doc: 'true            Dont split sequences by --max-seq-len                       '
  type: boolean
  inputBinding:
    prefix: --dont-split-seq-by-len
- id: dont_shuffle
  doc: 'true            Do not shuffle input database                               '
  type: boolean
  inputBinding:
    prefix: --dont-shuffle
- id: id_offset
  doc: '0               numeric ids in index file are offset by this value          '
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: max_seq_len
  doc: '65535           Maximum sequence length [1,32768]                           '
  type: boolean
  inputBinding:
    prefix: --max-seq-len
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- createdb
