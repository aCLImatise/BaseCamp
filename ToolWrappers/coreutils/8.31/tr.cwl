class: CommandLineTool
id: tr.cwl
inputs:
- id: in_complement
  doc: use the complement of SET1
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_delete
  doc: delete characters in SET1, do not translate
  type: boolean
  inputBinding:
    prefix: --delete
- id: in_squeeze_repeats
  doc: "replace each sequence of a repeated character\nthat is listed in the last\
    \ specified SET,\nwith a single occurrence of that character"
  type: boolean
  inputBinding:
    prefix: --squeeze-repeats
- id: in_truncate_set_one
  doc: first truncate SET1 to length of SET2
  type: boolean
  inputBinding:
    prefix: --truncate-set1
- id: in_char_one_char_two
  doc: all characters from CHAR1 to CHAR2 in ascending order
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tr
