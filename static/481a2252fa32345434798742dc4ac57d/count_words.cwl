class: CommandLineTool
id: count_words.cwl
inputs:
- id: in_change_verbosity_level
  doc: '#             change verbosity level (0, 1, 2)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_oligomer_length
  doc: '#             set oligomer length to # (monad size when using dyads)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in__input_filename
  doc: '#             input filename'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_two_str
  doc: add reverse complement
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_one_str
  doc: do not add reverse complement
  type: boolean?
  inputBinding:
    prefix: -1str
- id: in_sp
  doc: '#-#          spacing between the two parts of the dyads from # to #'
  type: boolean?
  inputBinding:
    prefix: -sp
- id: in_noov
  doc: do not allow overlapping occurrences
  type: boolean?
  inputBinding:
    prefix: -noov
- id: in_group_rc
  doc: group reverse complement with the direct sequence
  type: boolean?
  inputBinding:
    prefix: -grouprc
- id: in_nogroup_rc
  doc: do not group reverse complement with the direct sequence
  type: boolean?
  inputBinding:
    prefix: -nogrouprc
- id: in_count_words
  doc: AUTHOR
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: pattern discovery
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
- count-words
