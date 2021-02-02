class: CommandLineTool
id: glistquery.cwl
inputs:
- id: in_stat
  doc: '- print statistics of the list file and exit'
  type: boolean
  inputBinding:
    prefix: -stat
- id: in_query
  doc: '- single query word'
  type: boolean
  inputBinding:
    prefix: --query
- id: in_query_file
  doc: '- list of query words in a file'
  type: boolean
  inputBinding:
    prefix: --queryfile
- id: in_seq_file
  doc: '- FastA/FastQ file'
  type: boolean
  inputBinding:
    prefix: --seqfile
- id: in_list_file
  doc: '- list file made by glistmaker'
  type: boolean
  inputBinding:
    prefix: --listfile
- id: in_mismatch
  doc: '- specify number of mismatches (default 0, can be used with -d and -dd)'
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_perfect_match
  doc: "- specify number of 3' perfect matches (default 0)"
  type: long
  inputBinding:
    prefix: --perfectmatch
- id: in_min_freq
  doc: '- minimum frequency of the printed words (default 0)'
  type: long
  inputBinding:
    prefix: --minfreq
- id: in_max_freq
  doc: '- maximum frequency of the printed words (default MAX_UINT)'
  type: long
  inputBinding:
    prefix: --maxfreq
- id: in_all
  doc: '- in case of mismatches prints all found words'
  type: boolean
  inputBinding:
    prefix: -all
- id: in_increase_debug_level
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_input_list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glistquery
