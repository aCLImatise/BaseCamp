class: CommandLineTool
id: glistquery.cwl
inputs:
- id: input_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stat
  doc: '- print statistics of the list file and exit'
  type: boolean
  inputBinding:
    prefix: -stat
- id: query
  doc: '- single query word'
  type: boolean
  inputBinding:
    prefix: --query
- id: query_file
  doc: '- list of query words in a file'
  type: boolean
  inputBinding:
    prefix: --queryfile
- id: seq_file
  doc: '- FastA/FastQ file'
  type: boolean
  inputBinding:
    prefix: --seqfile
- id: list_file
  doc: '- list file made by glistmaker'
  type: boolean
  inputBinding:
    prefix: --listfile
- id: mismatch
  doc: '- specify number of mismatches (default 0, can be used with -d and -dd)'
  type: string
  inputBinding:
    prefix: --mismatch
- id: perfect_match
  doc: of 3' perfect matches (default 0)
  type: string
  inputBinding:
    prefix: --perfectmatch
- id: min_freq
  doc: '- minimum frequency of the printed words (default 0)'
  type: string
  inputBinding:
    prefix: --minfreq
- id: max_freq
  doc: '- maximum frequency of the printed words (default MAX_UINT)'
  type: string
  inputBinding:
    prefix: --maxfreq
- id: all
  doc: '- in case of mismatches prints all found words'
  type: boolean
  inputBinding:
    prefix: -all
- id: d
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- glistquery
