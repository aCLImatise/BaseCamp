class: CommandLineTool
id: tr.cwl
inputs:
- id: complement
  doc: use the complement of SET1
  type: boolean
  inputBinding:
    prefix: --complement
- id: delete
  doc: delete characters in SET1, do not translate
  type: boolean
  inputBinding:
    prefix: --delete
- id: squeeze_repeats
  doc: replace each sequence of a repeated character that is listed in the last specified
    SET, with a single occurrence of that character
  type: boolean
  inputBinding:
    prefix: --squeeze-repeats
- id: truncate_set1
  doc: first truncate SET1 to length of SET2
  type: boolean
  inputBinding:
    prefix: --truncate-set1
outputs: []
cwlVersion: v1.1
baseCommand:
- tr
